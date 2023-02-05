from django.urls import path
from .views import *

app_name = 'profiles'

urlpatterns = [
    # ==================== artist manager urls ===========================
    path('api/v1/artist_action/',ArtistActionviewSet.as_view(),name='artist_action'),
    path('api/v1/delete_project/<int:pk>/',ProjectDeleteViewSet.as_view(),name='delete_project'),
    path('api/v1/update_title/<int:id>/',ProjectTitleViewSet.as_view(),name='update_title'),

    # demo
    path('api/v1/demo/',DemoView.as_view(),name="demo"),
]
