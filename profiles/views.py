
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import routers, serializers, viewsets, generics
from .serializers import *
from .models import *
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters
from django_filters import Filter
from rest_framework.views import APIView
from rest_framework import permissions, status
import json


class chatflowSkills(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        try:
            data = request.data
            artists = data['artists']

            print(artists.split(','))

            skills = []
            possible_projects = []

            for artist in artists.split(','):
                artist = Artist.objects.get(pk=artist)
                for skill in artist.skill.all():
                    skills.append([skill.name, skill.id])
            for project in TemplateProjects .objects.all():

                for skill in project.skills.all():
                    print(skill)
                    if [skill.name, skill.id] in skills:
                        possible_projects.append([project.name, project.id])

            return Response({'skills': skills, 'projects': possible_projects}, status=status.HTTP_200_OK)
        except Exception as e:
            print(e)
            return Response({'error': 'Something went wrong'},
                            status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class WorkFeedViewSet(viewsets.ModelViewSet):
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['skill', 'demo_type', 'owner', 'show_in_top_feed']
    skill = Filter(name="skill", lookup_type='in')
    search_fields = ['name', 'owner__name', 'skill__name']
    ordering_fields = '__all__'

    def get_queryset(self):

        work = Work.objects.all().order_by('show_in_top_feed')

        return work


class ArtistViewSet(viewsets.ModelViewSet):
    serializer_class = ArtistProfileSerializer

    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['skill', 'languages', 'location']
    skill = Filter(name="skill", lookup_type='in')
    language = Filter(name="languages", lookup_type='in')

    search_fields = ['name', 'location__name',
                     'skill__name', 'languages__name']
    ordering_fields = '__all__'

    def get_queryset(self):
        profile = Artist.objects.filter()
        return profile
