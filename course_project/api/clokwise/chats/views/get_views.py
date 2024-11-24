from datetime import timedelta

from django.http import FileResponse, Http404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
from django.db.models import Max, Subquery, OuterRef, Q
from django.db.models.functions import Coalesce

from chats.models import Attachment
from chats.serializers.get_serializers import ChatMessageSerializer, ChatSerializer, FakeSupportChatSerializer, FakeSupportChatMessageSerializer
from users.models import UserReview

class GetChatsView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        chats = self.request.user.chats.annotate(
            last_message_time=Max("messages__datetime_created"),
            ordering_date=Coalesce("last_message_time", "datetime_created"),
            review_date=Subquery(
                UserReview.objects.filter(
                    reviewer=request.user,
                    chat=OuterRef("pk")
                ).values("datetime_created")
            ),
            deletion_date=Coalesce("review_date", "declined_at")
        ).order_by("-ordering_date").filter((Q(deletion_date__isnull=True) | Q(deletion_date__gte=timezone.now()-timedelta(hours=24))), is_support=False)

        data = {
            "support_chat": FakeSupportChatSerializer(current_user=request.user).data,
            "chats": ChatSerializer(instance=chats, current_user=request.user, many=True).data
        }
        return Response(data)
    

class GetChatView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, chat_id: int):
        if chat_id == 0:
            return Response(FakeSupportChatSerializer(current_user=request.user).data)
        
        chat = self.request.user.chats.filter(pk=chat_id).first()
        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)
        
        data = ChatSerializer(instance=chat, current_user=request.user).data
        return Response(data)
    

class GetMessagesView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, chat_id: int):
        if chat_id == 0:
            serializer = FakeSupportChatSerializer(current_user=request.user)
            messages = serializer.messages.all()
            data = FakeSupportChatMessageSerializer(instance=messages, current_user=request.user, many=True).data
            return Response(data)    
        
        chat = self.request.user.chats.filter(pk=chat_id).first()
        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)
        
        messages = chat.messages.order_by("-datetime_created").all()
        data = ChatMessageSerializer(instance=messages, current_user=request.user, many=True).data
        return Response(data)
    

class GetAttachmentView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, attachment_id: str, *args, **kwargs):
        attachment = Attachment.objects.filter(uuid=attachment_id).first()
        if not attachment:
            raise Http404

        if not attachment.file.storage.exists(attachment.file.name):
            raise Http404()

        return FileResponse(
            open(attachment.file.path, "rb"),
            as_attachment=True,
            filename=attachment.filename,
        )  