from django.shortcuts import render

from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import routers, serializers, viewsets, generics
from .serializers import *
from .models import *
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters
from django_filters import Filter
from .serializers import *
# Create your views here.


class SkillViewSet(viewsets.ModelViewSet):
    serializer_class = SkillSerializer

    def get_queryset(self):
        skill = Skill.objects.filter()
        return skill


class LocationViewSet(viewsets.ModelViewSet):
    serializer_class = LocationSerializer

    def get_queryset(self):
        location = Location.objects.filter()
        return location

class GenreViewSet(viewsets.ModelViewSet):
    serializer_class = GenreSerializer

    def get_queryset(self):
        genre = Genre.objects.filter()
        return genre