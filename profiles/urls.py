from django.urls import path
from .views import *

app_name = 'profiles'

urlpatterns = [
    # ==================== artist manager urls ===========================
    path('api/v1/artist_action/',ArtistActionviewSet.as_view(),name='artist_action'),
]
