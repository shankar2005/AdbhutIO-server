from django.contrib import admin
from django.urls import path
from django.urls import path, include
from .views import *
from django.conf.urls.static import static
from .settings import MEDIA_ROOT, MEDIA_URL, STATIC_ROOT, STATIC_URL
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken
from django.views.decorators.csrf import csrf_exempt
from .views import *
from profiles.views import *


router = routers.DefaultRouter()
router.register('get_feed', WorkFeedViewSet, basename='get_feed')
router.register('get_artist',
                ArtistViewSet, basename='get_artist')


urlpatterns = [
    path('', include('profiles.urls')),
    path('api/v1/',  include(router.urls)),
    path('api/v1/auth/login/', csrf_exempt(ObtainAuthToken.as_view())),
    path('api/v1/auth/verify/', ValidateToken.as_view()),
    path('api/v1/auth/register/', RegisterUserView.as_view()),

    # Admin URLs
    path('admin/', admin.site.urls),
]

urlpatterns += static(MEDIA_URL, document_root=MEDIA_ROOT)
urlpatterns += static(STATIC_URL, document_root=STATIC_ROOT)
