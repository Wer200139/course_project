from django.urls import path

from chats.consumers import ChatsConsumer
from users.consumers import NotificationsConsumer



websocket_urlpatterns = [
    path("chats/ws/", ChatsConsumer.as_asgi()), 
    path("notifications/ws/", NotificationsConsumer.as_asgi()),
]
