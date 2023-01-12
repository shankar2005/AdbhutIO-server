
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import routers, serializers, viewsets, generics
from .serializers import WorkFeedSerializer
from .models import *
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters


class WorkFeedViewSet(viewsets.ModelViewSet):
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['demo_type', 'is_active', 'from_client', 'is_demo']
    search_fields = ['name', 'owner__name']
    ordering_fields = '__all__'

    def get_queryset(self):
        profile = Work.objects.all()
        return profile
