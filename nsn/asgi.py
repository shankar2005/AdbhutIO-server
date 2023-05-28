import os
from channels.auth import AuthMiddlewareStack
from channels.routing import ProtocolTypeRouter, URLRouter
from django.core.asgi import get_asgi_application
from chat.middlewares import TokenAuthMiddleWare

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'nsn.settings')
# Initialize Django ASGI application early to ensure the AppRegistry
# is populated before importing code that may import ORM models.
django_asgi_app = get_asgi_application()

import chat.routing

application = ProtocolTypeRouter(
    {
        'http': django_asgi_app,
        'websocket': TokenAuthMiddleWare(AuthMiddlewareStack(URLRouter(chat.routing.websocket_urlpatterns))),
    }
)
