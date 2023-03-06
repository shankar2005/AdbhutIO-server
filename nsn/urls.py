from django.conf.urls.static import static
from django.contrib import admin
from django.urls import include, path
from django.views.decorators.csrf import csrf_exempt
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken

from .settings import MEDIA_ROOT, MEDIA_URL, STATIC_ROOT, STATIC_URL

""" drf-spectacular is a OpenAPI 3 schema generation tool with explicit
# focus on extensibility, customizability and client generation. """
from drf_spectacular.views import (
    SpectacularAPIView,
    SpectacularRedocView,
    SpectacularSwaggerView,
)

from misc.views import *
from profiles.views import *

from .views import *

router = routers.DefaultRouter()
router.register("get_feed", WorkFeedViewSet, basename="get_feed")
router.register("get_artist", ArtistViewSet, basename="get_artist")
router.register("get_skill", SkillViewSet, basename="get_skill")
router.register("get_location", LocationViewSet, basename="get_locations")
router.register("get_languages", LanguageViewSet, basename="get_languages")

router.register("get_content_products", TemplateProjectViewSet, basename="get_project")
router.register("get_my_projects", MyProjectsViewSet, basename="get_my_projects")
router.register("get_dreamproject", GetDreamProjectViewSet, basename="get_dreamproject")
router.register("get_recommendations", GetRecommendationsViewSet, "get_recommendations")
router.register("edit_project", EditProjectViewSet, basename="edit_project")


# ==================== product manager urls ==========================
router.register(
    "artist_feedback_action", ArtistFeedBackViewSet, basename="artist_feedback"
)
router.register("project_fee_actions", ProjectFeeViewSet, basename="project_fee")
router.register(
    "artist_request_action", ArtistRequestViewSet, basename="artist_request"
)
router.register("all_projects", AllProjectViewSet, basename="all_projects")


urlpatterns = [
    path("", include("profiles.urls")),
    path("api/v1/", include(router.urls)),
    # generate api schema at api/schema/
    path("api/schema/", SpectacularAPIView.as_view(), name="schema"),
    # optional UI:
    path(
        "api/schema/docs/",
        SpectacularSwaggerView.as_view(url_name="schema"),
        name="swagger-ui",
    ),
    # path('api/schema/redoc/', SpectacularRedocView.as_view(url_name='schema'), name='redoc'),
    path("api/v1/chatflow_skills/", chatflowSkills.as_view()),
    path("api/v1/auth/login/", EmailLogin.as_view(), name="email_login"),
    path("api/v1/auth/verify/", ValidateToken.as_view()),
    path("api/v1/auth/register/", RegisterUserView.as_view()),
    path("api/v1/auth/user_details/", UserDetailsView.as_view(), name="user_details"),
    path("api/v1/create_project/", CreateProjectView.as_view()),
    # Admin URLs
    path("admin/", admin.site.urls),
]

urlpatterns += static(MEDIA_URL, document_root=MEDIA_ROOT)
urlpatterns += static(STATIC_URL, document_root=STATIC_ROOT)
