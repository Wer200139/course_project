import json
from datetime import timedelta

from channels.generic.websocket import AsyncJsonWebsocketConsumer
from django.utils.translation import gettext as _
from django.utils import timezone
from django.db.models import Q

from channels.db import database_sync_to_async
from users.models import User, Notification

from asgiref.sync import sync_to_async


class NotificationsConsumer(AsyncJsonWebsocketConsumer):
    async def connect(self):
        self.user: User = self.scope["user"]
        if self.user.is_anonymous:
            await self.accept()
            await self.send(text_data="Unauthorized")
            await self.close()
            return

        self.group_name = f"notifications_user_{self.user.id}"
        await self.channel_layer.group_add(
            self.group_name,
            self.channel_name
        )
        await self.accept()

    async def receive_json(self, content, **kwargs):
        message_type: str = content.get("type")
        message_body: str = content.get("data")

        match message_type:
            case "mark_notification_as_read":
                notification_id = message_body.get("notification_id")
                if not notification_id:
                    return
                
                notification = await self.user.received_notifications.filter(id=notification_id).afirst()

                if not notification:
                    return
                
                notification.is_read = True
                notification.datetime_read = timezone.now()
                await notification.asave(update_fields=["is_read", "datetime_read"])               

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
