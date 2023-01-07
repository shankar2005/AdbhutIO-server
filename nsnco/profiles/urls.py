from django.urls import path
from .views import *

app_name = 'profiles'


urlpatterns = [
    path('', index, name="index"),
    path('artist/<int:artist_id>', artist, name='artist'),
    path('addArtist/', addArtist, name='addArtist'),
    path('logout/', logout, name='logout'),
    path('login/', loginUser, name='login'),
]
