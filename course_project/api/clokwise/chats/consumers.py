from datetime import timedelta

from channels.generic.websocket import AsyncJsonWebsocketConsumer
from django.utils.translation import gettext as _
from django.utils import timezone
from django.db.models import Q

from chats.models import Chat, MessageReadTime
from users.models import User

from asgiref.sync import sync_to_async


class ChatsConsumer(AsyncJsonWebsocketConsumer):
    async def connect(self):
        self.user: User = self.scope["user"]
        if self.user.is_anonymous:
            await self.accept()
            await self.send(text_data="Unauthorized")
            await self.close()
            return

        self.group_name = f"chats_user_{self.user.id}"
        await self.channel_layer.group_add(
            self.group_name,
            self.channel_name
        )
        await self.accept()

    async def receive_json(self, content, **kwargs):
        message_type: str = content.get("type")
        message_body: str = content.get("data")

        match message_type:
            case "mark_chat_as_read":
                chat_id = message_body.get("chat_id")
                if not chat_id:
                    return
                
                chat: Chat = await self.user.chats.filter(id=chat_id).afirst()
                if not chat:
                    return
                
                unread_messages = chat.messages.filter(~Q(id__in=self.user.messages_read_times.values_list("message", flat=True)))
                read_records_to_create = []
                async for message in unread_messages:
                    if message.available_until is None and message.from_user_id != self.user.id:
                        message.available_until = timezone.now()+timedelta(hours=24)
                        await message.asave(update_fields=["available_until"])
                    read_records_to_create.append(
                        MessageReadTime(
                            message=message,
                            user=self.user
                        )
                    )

                async for recipient in chat.participants.all().exclude(id=self.user.id):
                    group_name = f"chats_user_{recipient.id}"

                    await self.channel_layer.group_send(
                        group_name,
                        message={
                            "type": "message_to_send",
                            "data": {
                                "type": "chat_has_been_read",
                                "chat_id": chat.id,
                            },
                        },
                    )

                
                await MessageReadTime.objects.abulk_create(read_records_to_create)

    async def disconnect(self, code):
        if self.channel_layer and getattr(self, "group_name", None):
            await self.channel_layer.group_discard(
                self.group_name,
                self.channel_name
            )

        return await super().disconnect(code)
    
    async def new_message(self, obj: dict) -> None:
        await self.send_json(content=obj['data'])

    async def message_to_send(self, obj: dict) -> None:
        await self.send_json(content=obj['data'])
