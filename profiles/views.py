
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
from rest_framework.pagination import PageNumberPagination


class chatflowSkills(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        try:
            data = request.data
            artists = data['artists']
            product = data['product']

            skills = []
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
                    if [skill.name, skill.id] not in skills:
                        skills.append([skill.name, skill.id])

            print(skills)

            if product in [0, '0', None, '']:

                for project in TemplateProjects.objects.all():
                    for skill in project.skills.all():
                        if [skill.name, skill.id] in skills:
                            possible_projects.append(
                                [project.name, project.id])
            else:
                return Response({'skills': [
                    [skill.name, skill.id] for skill in TemplateProjects.objects.get(id=int(product)).skills.all()], 'projects': TemplateProjects.objects.filter(pk=product).values_list('name', 'id')}, status=status.HTTP_200_OK)

            return Response({'skills': skills, 'projects': possible_projects}, status=status.HTTP_200_OK)
        except Exception as e:
            print(e)
            return Response({'error': 'Something went wrong', 'error_message': str(e)},
                            status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class CreateProjectView(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        try:
            data = request.data
            artists = data['shortlisted_artists']
            product = data['product']
            brief = data['brief']
            stage = data['stage']

            if artists in [0, '0', None, '']:
                return Response({'error': 'Please select an artist'}, status=status.HTTP_200_OK)
            if product in [0, '0', None, '']:
                return Response({'error': 'Please select a product'}, status=status.HTTP_200_OK)
            if brief in [0, '0', None, '']:
                return Response({'error': 'Please send a brief message '}, status=status.HTTP_200_OK)

            # create project
            project = TemplateProjects.objects.get(pk=product)
            new_project = Project.objects.create(
                stage=stage,
                brief=brief, project_template=project, client=Client.objects.get(user=request.user))

            # add artists
            for artist in artists:
                new_project.shortlisted_artists.add(
                    Artist.objects.get(pk=artist))

            new_project.save()
            return Response({'success': 'Project created successfully'}, status=status.HTTP_200_OK)
        except Exception as e:
            print(e)
            return Response({'error': 'Something went wrong', 'error_message': str(e)},
                            status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class StandardResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 100


class WorkFeedViewSet(viewsets.ModelViewSet):
    pagination_class = StandardResultsSetPagination
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['demo_type',
                        'owner', 'show_in_top_feed', 'owner__skill', 'owner__skill__genres', 'owner__location']

    search_fields = ['name', 'owner__name',
                     'owner__skill__name', 'owner__skill__genres__name']
    ordering_fields = '__all__'

    def get_queryset(self):

        work = Work.objects.filter(
            show_in_top_feed=True).order_by('show_in_top_feed')

        return work


class GetRecommendationsViewSet(viewsets.ModelViewSet):
    pagination_class = StandardResultsSetPagination
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = WorkFeedSerializer
    filter_backends = [DjangoFilterBackend,
                       filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = ['demo_type',
                        'owner', 'show_in_top_feed', 'owner__skill', 'owner__skill__genres', 'owner__location']

    search_fields = ['name', 'owner__name',
                     'owner__skill__name', 'owner__skill__genres__name']
    ordering_fields = '__all__'

    def get_queryset(self):

        work = Work.objects.filter(
            owner__in=Client.objects.get(user=self.request.user).recommended_artists.all()).order_by('show_in_top_feed')

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


class MyProjectsViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = ProjectSerializerMini

    def get_queryset(self):
        return Project.objects.filter(client__user=self.request.user, stage='Lead')


class GetDreamProjectViewSet(viewsets.ModelViewSet):

    serializer_class = ProjectSerializerMini

    def get_queryset(self):
        return Project.objects.filter(stage='DreamProject')


class EditProjectViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = ProjectSerializer

    def get_queryset(self):
        return Project.objects.filter(client__user=self.request.user, pk=self.kwargs['pk'])
