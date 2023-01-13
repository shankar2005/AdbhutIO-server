
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import routers, serializers, viewsets, generics
from .serializers import *
from .models import *
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters


class WorkFeedViewSet(viewsets.ModelViewSet):
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = []
    search_fields = ['name', 'owner__name']
    ordering_fields = '__all__'

    def get_queryset(self):

        work = Work.objects.all().order_by('show_in_top_feed')

        return work


class ArtistViewSet(viewsets.ModelViewSet):
    serializer_class = ArtistProfileSerializer

    def get_queryset(self):
        profile = Artist.objects.filter()
        return profile
