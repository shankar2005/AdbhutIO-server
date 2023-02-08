from django.urls import path
from .views import *

app_name = 'profiles'

urlpatterns = [
    # ==================== artist manager urls ===========================
    path('api/v1/artist_action/',ArtistActionviewSet.as_view(),name='artist_action'),
    path('api/v1/delete_project/<int:pk>/',ProjectDeleteViewSet.as_view(),name='delete_project'),
    path('api/v1/update_title/<int:id>/',ProjectTitleViewSet.as_view(),name='update_title'),
    path('api/v1/assign_artist_action/<int:projectId>/',ProjectAssignArtistActionViewSet.as_view(),
        name='assign_artist_action'),
    path('api/v1/assign_artist/<int:projectId>/<int:artistId>/',ProjectAssignArtistViewSet.as_view(),
        name='assign_artist'),
    path('api/v1/unassign_artist/<int:projectId>/<int:artistId>/',ProjectUnAssginArtistViewSet.as_view(),
        name='unassign_artist'),
    path('api/v1/shortlisted_artist_action/<int:projectId>/',ProjectShortlistedArtistActionViewSet.as_view(),
        name='shortlisted_artist_action'),

    # demo
    path('api/v1/demo/',DemoView.as_view(),name="demo"),
]
