
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
            product = data['product']

            skills = {}
            possible_projects = []
            # print intersecting skills of artists
            if artists in [0, '0', None, '']:
                if product in [0, '0', None, '']:
                    return Response({'skills': [], 'projects': []}, status=status.HTTP_200_OK)
                else:

                    return Response({'skills': [
                        [skill.name, skill.id] for skill in TemplateProjects.objects.get(id=int(product)).skills.all()], 'projects': TemplateProjects.objects.filter(pk=product).values_list('name', 'id')}, status=status.HTTP_200_OK)
            for artist in artists.split(','):
                artist_skills = Artist.objects.get(pk=artist).skill.all()
                for skill in artist_skills:
                    if skill.name in skills:
                        skills[skill.name] += 1
                    else:
                        skills[skill.name] = 1

            print(skills)

            if product in [0, '0', None, '']:
                skills = [[skill.name, skill.id] for skill in Skill.objects.all(
                ) if skill.name in skills]
                for project in TemplateProjects.objects.all():
                    for skill in project.skills.all():
                        if [skill.name, skill.id] in skills:
                            possible_projects.append(
                                [project.name, project.id])
            else:
                product = int(product)
                for project in TemplateProjects.objects.filter(pk=product):
                    for skill in project.skills.all():
                        if skill.name in skills:
                            skills[skill.name] += 1
                        else:
                            skills[skill.name] = 1

                skills = [[skill.name, skill.id] for skill in Skill.objects.all(
                ) if skill.name in skills and skills[skill.name] == len(artists.split(','))+1]
                possible_projects = TemplateProjects.objects.filter(pk=product).values_list(
                    'name', 'id')

            return Response({'skills': skills, 'projects': possible_projects}, status=status.HTTP_200_OK)
        except Exception as e:
            print(e)
            return Response({'error': 'Something went wrong', 'error_message': str(e)},
                            status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class WorkFeedViewSet(viewsets.ModelViewSet):
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['demo_type',
                        'owner', 'show_in_top_feed', 'owner__skill', 'owner__skill__genres']

    search_fields = ['name', 'owner__name',
                     'owner__skill__name', 'owner__skill__genres__name']
    ordering_fields = '__all__'

    def get_queryset(self):

        work = Work.objects.filter(
            show_in_top_feed=True).order_by('show_in_top_feed')

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


class TemplateProjectViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = TemplateProjectsSerializer

    def get_queryset(self):
        return TemplateProjects.objects.all()
