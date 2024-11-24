import os

from django.core.asgi import get_asgi_application


django_asgi_app = get_asgi_application()

from core import routing 

from chats.middlewares import TokenAuthMiddleware


from channels.routing import ProtocolTypeRouter, URLRouter

# application = get_asgi_application()

application = ProtocolTypeRouter(
    {
        "http": django_asgi_app,
        "websocket": TokenAuthMiddleware(URLRouter(routing.websocket_urlpatterns)),
    }
)
