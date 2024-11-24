from django.urls import path

from chats.views.get_views import GetAttachmentView, GetChatView, GetChatsView, GetMessagesView
from chats.views.views import ConfirmChattingRequestView, DeclineChattingRequestView, DeleteMessageView, FinishChattingView, SendMessageView, SendReviewView, StartChattingView, UploadAttachmentFileView


urlpatterns = [
    path("get-chats/", GetChatsView.as_view()),
    path("get-chat/<int:chat_id>/", GetChatView.as_view()),
    path("get-messages/<int:chat_id>/", GetMessagesView.as_view()),
    path("delete-message/<int:message_id>/", DeleteMessageView.as_view()),
    path("confirm-chatting-request/<int:chat_id>/", ConfirmChattingRequestView.as_view()),
    path("decline-chatting-request/<int:chat_id>/", DeclineChattingRequestView.as_view()),
    path("send-message/", SendMessageView.as_view()),
    path("start-chatting/<int:user_id>/", StartChattingView.as_view()),
    path("start-chatting/<int:user_id>/<int:application_id>/", StartChattingView.as_view()),
    path("finish-chatting/<int:chat_id>/", FinishChattingView.as_view()),
    path("send-review/<int:chat_id>/", SendReviewView.as_view()),
    path("upload-attachment/<int:chat_id>/", UploadAttachmentFileView.as_view()),
    path("get-attachment/<str:attachment_id>/", GetAttachmentView.as_view()),
]   
