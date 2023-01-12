
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import routers, serializers, viewsets, generics
from .serializers import WorkFeedSerializer
from .models import *


class WorkFeedViewSet(viewsets.ModelViewSet):
    serializer_class = WorkFeedSerializer

    def get_queryset(self):
        profile = Work.objects.all()
        return profile
