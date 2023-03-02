from django.shortcuts import render
from django_filters import Filter
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters, generics, routers, serializers, viewsets
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from .models import *
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


class LanguageViewSet(viewsets.ModelViewSet):
    serializer_class = LanguageSerializers

    def get_queryset(self):
        return Language.objects.all()
