from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from .settings import MEDIA_ROOT, MEDIA_URL, STATIC_ROOT, STATIC_URL
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken
from django.views.decorators.csrf import csrf_exempt

from .views import *
from profiles.views import *
from misc.views import *


router = routers.DefaultRouter()
router.register('get_feed', WorkFeedViewSet, basename='get_feed')
router.register('get_artist',ArtistViewSet, basename='get_artist')
router.register('get_skill', SkillViewSet, basename='get_skill')
router.register('get_location', LocationViewSet, basename='get_project')
router.register('get_content_products',TemplateProjectViewSet, basename='get_project')
router.register('get_my_projects', MyProjectsViewSet,basename='get_my_projects')
router.register('get_dreamproject', GetDreamProjectViewSet,basename='get_dreamproject')
router.register('get_recommendations',GetRecommendationsViewSet, 'get_recommendations')
router.register('edit_project', EditProjectViewSet, basename='edit_project')


urlpatterns = [
    path('', include('profiles.urls')),
    path('api/v1/', include(router.urls)),

    path('api/v1/chatflow_skills/',  chatflowSkills.as_view()),
    path('api/v1/auth/login/', csrf_exempt(ObtainAuthToken.as_view())),
    path('api/v1/auth/verify/', ValidateToken.as_view()),
    path('api/v1/auth/register/', RegisterUserView.as_view()),
    path('api/v1/create_project/', CreateProjectView.as_view()),

    # Admin URLs
    path('admin/', admin.site.urls),
]

urlpatterns += static(MEDIA_URL, document_root=MEDIA_ROOT)
urlpatterns += static(STATIC_URL, document_root=STATIC_ROOT)
