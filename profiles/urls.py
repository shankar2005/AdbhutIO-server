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
    path('api/v1/shortlist_artist/<int:projectId>/<int:artistId>/',ProjectShortlistedArtistViewSet.as_view(),
        name='shortlist_artist'),
    path('api/v1/decline_artist/<int:projectId>/<int:artistId>/',ProjectShortlistedArtistRemoveViewSet.as_view(),
        name='decline_artist'),

    # create project
    path('api/v1/create_new_project/',CreateNewProject.as_view(),name='create_new_project'),
    # demo
    path('api/v1/demo/',DemoView.as_view(),name="demo"),
]
