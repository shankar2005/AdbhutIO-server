import json
import os

# openAI package
import openai
from django.db.models import Q
from decouple import config
from rest_framework.generics import RetrieveAPIView
from django.contrib.auth.models import AnonymousUser
from django.http import JsonResponse
from django.shortcuts import get_list_or_404, get_object_or_404
from django_filters import Filter
from django_filters.rest_framework import DjangoFilterBackend
import django_filters.rest_framework
from drf_spectacular.utils import extend_schema
from rest_framework import (
    filters,
    generics,
    parsers,
    permissions,
    routers,
    serializers,
    status,
    viewsets,
)
from rest_framework.pagination import PageNumberPagination
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.decorators import api_view

# custom permissions
from .customPermission import (
    ArtistManagerPermisson,
    CustomPermissionForClientAndPM,
    ProductManagerPermission,
)
from django.db.models import F
# models
from .models import *
from .models import ChatGPTMessage

# serializers
from .serializers import *

# import the api key






class chatflowSkills(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        try:
            data = request.data
            artists = data.get("artists", 0)
            product = data["product"]

            # ----------Testing--- ------------
            print(f" product {product}")
            # ----------------------------
            skills = []
            possible_projects = []
            # print intersecting skills of artists
            if artists in [0, "0", None, ""]:
                print("passed1")
                if product in [0, "0", None, ""]:
                    return Response(
                        {"skills": [], "projects": []}, status=status.HTTP_200_OK
                    )
                else:
                    print("passed 2")
                    return Response(
                        {
                            "skills": [
                                [skill.name, skill.id]
                                for skill in TemplateProjects.objects.get(
                                    id=int(product)
                                ).get_ordered_skills()
                            ],
                            "projects": TemplateProjects.objects.filter(
                                pk=product
                            ).values_list("name", "id"),
                        },
                        status=status.HTTP_200_OK,
                    )
            for artist in artists.split(","):
                artist_skills = Artist.objects.get(pk=artist).skill.all()
                for skill in artist_skills:
                    if [skill.name, skill.id] not in skills:
                        skills.append([skill.name, skill.id])

            if product in [0, "0", None, ""]:
                for project in TemplateProjects.objects.all():
                    for skill in project.get_ordered_skills():
                        if [skill.name, skill.id] in skills:
                            possible_projects.append([project.name, project.id])
            else:
                return Response(
                    {
                        "skills": [
                            [skill.name, skill.id]
                            for skill in TemplateProjects.objects.get(
                                id=int(product)
                            ).get_ordered_skills()
                        ],
                        "projects": TemplateProjects.objects.filter(
                            pk=product
                        ).values_list("name", "id"),
                    },
                    status=status.HTTP_200_OK,
                )

            return Response(
                {"skills": skills, "projects": possible_projects},
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"error": "Something went wrong", "error_message": str(e)},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )




# -------------------- standard pagination classes -------------------------------
class StandardResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = "page_size"
    max_page_size = 1000


class RecommendedResultsSetPagination(PageNumberPagination):
    page_size = 3
    page_size_query_param = "page_size"
    max_page_size = 100


# ------------------------------------ work feed api ---------------------------------
class WorkFeedViewSet(viewsets.ModelViewSet):
    pagination_class = StandardResultsSetPagination
    serializer_class = WorkFeedSerializer
    filter_backends = [
        DjangoFilterBackend,
        filters.SearchFilter,
        filters.OrderingFilter,
    ]
    filterset_fields = [
        "demo_type",
        "owner",
        "show_in_top_feed",
        "owner__skill",
        "owner__skill__genres",
        "owner__location",
    ]

    search_fields = [
        "name",
        "owner__name",
        "owner__skill__name",
        "owner__skill__genres__name",
    ]
    ordering_fields = "__all__"

    def get_queryset(self):
        work = Work.objects.filter(show_in_top_feed=True).order_by("show_in_top_feed")
        return work

# ------------------------------- RecommendedResults api ------------------------------------
class GetRecommendationsViewSet(viewsets.ModelViewSet):
    pagination_class = RecommendedResultsSetPagination
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = WorkFeedSerializer
    filter_backends = [
        DjangoFilterBackend,
        filters.SearchFilter,
        filters.OrderingFilter,
    ]
    filterset_fields = [
        "demo_type",
        "owner",
        "show_in_top_feed",
        "owner__skill",
        "owner__skill__genres",
        "owner__location",
    ]

    search_fields = [
        "name",
        "owner__name",
        "owner__skill__name",
        "owner__skill__genres__name",
    ]
    ordering_fields = "__all__"

    def get_queryset(self):
        work = Work.objects.filter(
            owner__in=Client.objects.get(
                user=self.request.user
            ).recommended_artists.all()
        ).order_by("show_in_top_feed")
        return work


# -------------------------- template projects url -----------------------------
class TemplateProjectViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = TemplateProjectsSerializer

    def get_queryset(self):
        return TemplateProjects.objects.all()

class TemplateProjectsArtistSkillView(generics.RetrieveAPIView):
    queryset = TemplateProjects.objects.all()

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        skill_ids = instance.skills.values_list('id', flat=True)

        filtered_artists = Artist.objects.filter(skill__in=skill_ids)

        serializer = ArtistProfileSerializer(filtered_artists, many=True)
        return Response(serializer.data)

class TemplateProjectsWorksView(generics.RetrieveAPIView):
    queryset = TemplateProjects.objects.all()
    serializer_class = WorkSerializer

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        skill_ids = instance.skills.values_list('id', flat=True)
        limit = request.query_params.get('limit')
        filtered_artists = Artist.objects.filter(skill__in=skill_ids)
        works = []
        for artist in filtered_artists:
            works.extend(artist.works_links.all())
        random_works = random.sample(works, int(limit))
        serializer = self.get_serializer(random_works, many=True)
        return Response(
            data={"content_works": serializer.data},
            status=status.HTTP_200_OK,
        )

class MyProjectsViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = ProjectSerializerMini

    def get_queryset(self):
        return Project.objects.filter(
            client__user=self.request.user, stage="Lead"
        ).order_by("-id")


class GetDreamProjectViewSet(viewsets.ModelViewSet):
    serializer_class = ProjectSerializerMini

    def get_queryset(self):
        return Project.objects.filter(stage="DreamProject").order_by("-id")


# ------------------------------------ project calculation ------------------------


def PorjectCalculation(project, data):
    if data["assigned_artist_payouts"] > 0:
        if project.solution_fee == 0 and project.production_advance == 0:
            project.assigned_artist_payouts = data["assigned_artist_payouts"]
            project.solution_fee = float(data["assigned_artist_payouts"]) * 2.5
            project.production_advance = (
                (float(data["assigned_artist_payouts"]) * 2.5) / 100
            ) * 30
            project.save()
            return True
    elif data["assigned_artist_payouts"] == 0:
        print(data["assigned_artist_payouts"])
        project.assigned_artist_payouts = 0.0
        project.solution_fee = 0.0
        project.production_advance = 0.0
        project.save()
        return True
    return False


class ProjectDemoViewSet(viewsets.ModelViewSet):
    queryset = ProjectDemo.objects.all()
    serializer_class = ProjectDemoSerializer
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    http_method_names = ["get", "post", "patch", "delete"]


class ProjectsByPMAPIView(generics.ListAPIView):
    serializer_class = ProjectSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        id = self.kwargs['id']
        return Project.objects.filter(production_manager__id=id)

class EditProjectViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = ProjectSerializer

    def get_queryset(self):
        try:
            if not self.request.user.is_anonymous:
                return Project.objects.exclude(stage="DreamProject").order_by("-id")
            return Project.objects.filter(stage="DreamProject").order_by("-id")
        except Exception as e:
            return {'error':e}

    def retrieve(self, request, pk=None):
        try:
            project = get_object_or_404(Project, pk=pk)
            if project.stage == "DreamProject":

                return Response(
                    ProjectSerializer(project, context={"request": request}).data, status=status.HTTP_200_OK
                )
            elif request.user.is_anonymous:
                return Response(
                    ProjectSerializer(project, context={"request": request}).data, status=status.HTTP_200_OK
                )
            elif not request.user.is_anonymous:
                print(project)
                if Role.objects.get(user=request.user).role in [
                    "Client",
                    "PM",
                    "AM",
                ]:
                    return Response(
                        ProjectSerializer(project, context={"request": request}).data, status=status.HTTP_200_OK
                    )
                return Response(
                    {"error": "you don't have permission to update"},
                    status=status.HTTP_400_BAD_REQUEST,
                )
            return Response(
                {"error": "user is not logged in or project is not dream project"},
                status=status.HTTP_404_NOT_FOUND,
            )
        except Exception as e:
            return Response(
                {"error": "Something went wrong", "error_message": str(e)},
                status=status.HTTP_401_UNAUTHORIZED,
            )

    def update(self, request, pk=None):
        try:
            print("called")
            project = get_object_or_404(Project, pk=pk)
            print(project)
            data = request.data
            if "project_demo" in data:
                data["project_demo"]["project"] = project.id
                data["project_demo"]["status"] = "Selected"
                projectDemo_serializer = ProjectDemoSerializer(
                    data=data["project_demo"]
                )
                if projectDemo_serializer.is_valid():
                    projectDemo_serializer.save()
                    project_demo = get_object_or_404(
                        ProjectDemo, id=projectDemo_serializer.data["id"]
                    )
                    project.project_demos.add(project_demo)
                    project.save()
                    del data["project_demo"]
                else:
                    return Response(
                        projectDemo_serializer.error_messages,
                        status=status.HTTP_400_BAD_REQUEST,
                    )
            if "assigned_artist_payouts" in data:
                calculation = PorjectCalculation(project, data)
                if calculation:
                    del data["assigned_artist_payouts"]
            # if project.stage == "DreamProject":
            #     project_serializer = ProjectSerializer(instance=project, data=data)
            #     if project_serializer.is_valid():
            #         project_serializer.save()
            #         return Response(project_serializer.data, status=status.HTTP_200_OK)
            #     return Response(
            #         project_serializer.error_messages,
            #         status=status.HTTP_400_BAD_REQUEST,
            #     )
            if not request.user.is_anonymous:
                if Role.objects.get(user=request.user).role in [
                    "Client",
                    "PM",
                ]:
                    project_serializer = ProjectSerializer(instance=project,context={'request': request}, data=data)
                    if project_serializer.is_valid():
                        project_serializer.save()
                        return Response(
                            project_serializer.data, status=status.HTTP_200_OK
                        )
                    else:
                        return Response(
                            project_serializer.error_messages,
                            status=status.HTTP_400_BAD_REQUEST,
                        )

                return Response(
                    {"error": "you don't have permission to update"},
                    status=status.HTTP_400_BAD_REQUEST,
                )
            return Response(
                {"error": "user is not logged in"},
                status=status.HTTP_400_BAD_REQUEST,
            )
        except Exception as e:
            print(e)
            return Response(
                {
                    "error": "something is wrong",
                    "error_message": str(e),
                },
                status=status.HTTP_401_UNAUTHORIZED,
            )

    def partial_update(self, request, pk=None):
        try:
            project = get_object_or_404(Project, pk=pk)
            data = request.data
            if "project_demo" in data:
                data["project_demo"]["project"] = project.id
                data["project_demo"]["status"] = "Selected"
                projectDemo_serializer = ProjectDemoSerializer(
                    data=data["project_demo"]
                )
                if projectDemo_serializer.is_valid():
                    projectDemo_serializer.save()
                    project_demo = get_object_or_404(
                        ProjectDemo, id=projectDemo_serializer.data["id"]
                    )
                    project.project_demos.add(project_demo)
                    project.save()
                    del data["project_demo"]
                else:
                    return Response(
                        projectDemo_serializer.error_messages,
                        status=status.HTTP_400_BAD_REQUEST,
                    )
            if "assigned_artist_payouts" in data:
                calculation = PorjectCalculation(project, data)
                if calculation:
                    del data["assigned_artist_payouts"]
            if project.stage == "DreamProject":
                project_serializer = ProjectSerializer(instance=project,context={'request': request}, data=data)
                if project_serializer.is_valid():
                    project_serializer.save()
                    return Response(project_serializer.data, status=status.HTTP_200_OK)
                return Response(
                    project_serializer.error_messages,
                    status=status.HTTP_400_BAD_REQUEST,
                )
            elif not request.user.is_anonymous:
                if Role.objects.get(user=request.user).role in [
                    "Client",
                    "PM",
                ]:
                    project_serializer = ProjectSerializer(
                        instance=project, data=request.data,context={'request': request}
                    )
                    if project_serializer.is_valid():
                        project_serializer.save()
                        return Response(
                            project_serializer.data, status=status.HTTP_200_OK
                        )
                    return Response(
                        project_serializer.error_messages,
                        status=status.HTTP_400_BAD_REQUEST,
                    )
                return Response(
                    {"error": "you don't have permission to update"},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            return Response(
                {"error": "user is not logged in or project is not dream project"},
                status=status.HTTP_400_BAD_REQUEST,
            )
        except Exception as e:
            return Response(
                {
                    "error": "user is not logged in or project is not dream project",
                    "error_message": str(e),
                },
                status=status.HTTP_401_UNAUTHORIZED,
            )


class ChatOnOff(APIView):
    permission_classes = (permissions.AllowAny,)

    def get(self, request):
        pk = request.data["id"]
        chat = ChatBot.objects.get(project__id=pk)
        serializer = ChatBotSerializer(chat)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def patch(self, request, *args, **kwargs):
        try:
            id = request.data["id"]
            if Project.objects.filter(pk=id).exists():
                chat = ChatBot.objects.get(project__id=id)
                # print(chat.status)
                # chat.status = request.data['status']
                # chat.save()
                # assert chat.status == request.data['status'], "status should be toggle"

                serializer = ChatBotSerializer(chat, data=request.data)

                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data, status=status.HTTP_200_OK)
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response(
                {"error": "Something went wrong", "error_message": str(e)},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )


# ====================== delete project api ==============================


class ProjectDeleteViewSet(APIView):
    permission_classes = (permissions.AllowAny,)

    def delete(self, request, pk, format=None):
        try:
            if not Project.objects.filter(id=pk).exists():
                return Response(
                    {"error": "project Not Found"}, status=status.HTTP_404_NOT_FOUND
                )
            project = get_object_or_404(Project, id=pk)
            project.delete()
            return Response(
                {"message": "project is deleted"}, status=status.HTTP_200_OK
            )
        except Exception as e:
            return Response(
                {"error": "something went wrong", "error_message": str(e)},
                status=status.HTTP_401_UNAUTHORIZED,
            )


# ================== artist manager API's =======================
class ProjectDemoViewSet(viewsets.ModelViewSet):
    queryset = ProjectDemo.objects.all()
    serializer_class = ProjectDemoSerializer
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    http_method_names = ["get", "post", "patch", "delete"]

class ArtistViewSet(viewsets.ModelViewSet):
    queryset = Artist.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = ArtistProfileSerializer
    http_method_names = ["get", "post", "patch", "delete"]

    filter_backends = [
        DjangoFilterBackend,
        filters.SearchFilter,
        filters.OrderingFilter,
    ]
    filterset_fields = ["skill", "languages", "location"]
    skill = Filter(name="skill", lookup_type="in")
    language = Filter(name="languages", lookup_type="in")

    search_fields = ["name", "location__name", "skill__name", "languages__name"]
    ordering_fields = "__all__"

    def get_queryset(self):
        profile = Artist.objects.filter()
        return profile


class ProjectDemoAddLinkOrDoc(generics.ListCreateAPIView):
    permission_classes = [IsAuthenticated]
    queryset = ProjectDemo.objects.all()


    def get_serializer_class(self):
        if self.request.data.get('document'):
            return ProjectDemoFileSerializer
        return ProjectDemoLinkSerializer

class ProjectDemoListView(generics.ListAPIView):
    queryset = ProjectDemo.objects.all()
    serializer_class = ProjectDemoListSerializer

class ProjectDemoDetailView(generics.RetrieveAPIView):
    queryset = ProjectDemo.objects.all()
    serializer_class = ProjectDemoListSerializer

class AssignArtistView(generics.UpdateAPIView):
    queryset = ProjectDemo.objects.all()
    serializer_class = AssignArtistSerializer

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        artist = request.data.get('artist', None)
        artist_ids = request.data.get('assigned_artists', [])
        if artist is not None:
            instance.artist = Artist.objects.get(id=artist)

        instance.assigned_artists.add(*artist_ids)
        instance.save()

        serializer = self.get_serializer(instance)
        return Response(serializer.data)

class UnAssignArtistView(generics.UpdateAPIView):
    queryset = ProjectDemo.objects.all()
    serializer_class = UnAssignArtistSerializer

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        artist_ids = request.data.get('artist_ids', [])

        instance.assigned_artists.remove(*artist_ids)
        instance.save()

        serializer = self.get_serializer(instance)
        return Response(serializer.data)

class AssignProjectView(generics.UpdateAPIView):
    queryset = Project.objects.all()
    serializer_class = AssignProjectSerializer
# ====================== artist action ===================================
# Filters for artist list api modify this for adding new filters to search for artist
import django_filters
from django.db.models import Q

class ArtistFilter(django_filters.FilterSet):
    search = django_filters.CharFilter(method='filter_search')

    def filter_search(self, queryset, name, value):
        search_terms = value.split()
        filter_conditions = Q()

        for term in search_terms:
            filter_conditions &= (
                Q(name__icontains=term) |
                Q(skill__name__icontains=term) |
                Q(genre__name__icontains=term) |
                Q(location__name__icontains=term) |
                Q(languages__name__icontains=term)
            )

        filtered_queryset = queryset.filter(filter_conditions).distinct('id')

        if not filtered_queryset.exists():
            fallback_conditions = Q()
            for term in search_terms:
                fallback_conditions |= (
                    Q(name__icontains=term) |
                    Q(skill__name__icontains=term) |
                    Q(genre__name__icontains=term) |
                    Q(location__name__icontains=term) |
                    Q(languages__name__icontains=term)
                )

            filtered_queryset = queryset.filter(fallback_conditions).distinct('id')

        return filtered_queryset

    class Meta:
        model = Artist
        fields = ['search']

class ArtistListAPIView(generics.ListAPIView):
    pagination_class = ArtistListPagination
    serializer_class = ArtistSerializer
    filter_backends = [django_filters.rest_framework.DjangoFilterBackend]
    filterset_class = ArtistFilter

    def get_queryset(self):
        queryset = Artist.objects.all().order_by('-id').distinct('id')
        return queryset

class TotalArtistCountAPIView(APIView):
    def get(self, request):
        total_count = Artist.objects.count()
        return Response({'total_count': total_count})

class SkillListAPIView(APIView):
    def get(self, request):
        skills = Skill.objects.all()
        serializer = SkillSerializer(skills, many=True)
        return Response(serializer.data)

### Note: Temporary method to fix work links remove this later when not needed!!!!! ###
### visit /api/v1/linken_works/ by making post request to fix work links of artist###
@api_view(['POST'])
def link_unassigned_works(request):
    artists = Artist.objects.all()
    for artist in artists:
        works = Work.objects.filter(owner=artist)
        artist.works_links.set(works)
        artist.save()
    return Response({'message': 'Unassigned works linked to artists.'})

def get_chatbot_status(request, project_id):
    chatbot = get_object_or_404(ChatBot, project_id=project_id)
    status = chatbot.status
    return JsonResponse({'status': status})

class WorkTagUpdateAPIView(generics.UpdateAPIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = WorkSerializer

    def get_object(self):
        pk = self.kwargs.get('pk')
        return Work.objects.filter(pk=pk).first()

    def get(self, request, *args, **kwargs):
        instance = self.get_object()
        if not instance:
            return Response(status=status.HTTP_404_NOT_FOUND)
        serializer = self.get_serializer(instance)
        return Response(serializer.data)

    def put(self, request, pk):
        try:
            work = Work.objects.get(pk=pk)
        except:
            return Response({"error":"Work not found"}, status=404)
        try:
            current_user = Role.objects.get(user=request.user)
            if current_user.role != 'AM':
                return Response({"error":"Unauthorized User"}, status=403)
        except:
            return Response({"error":"No such user"},status=403)
        tag_names = request.data.get('tags', [])
        weblink = request.data.get('weblink')

        # Clear existing tags for the work object
        work.tags.clear()

        # Add the requested tags to the work object
        for tag_name in tag_names:
            tag_name = tag_name.capitalize()
            tag, _ = Tag.objects.get_or_create(name=tag_name)
            work.tags.add(tag)
        if weblink:
            work.weblink = weblink
            work.save()

        return Response({'message': 'Updated successfully'})

class ArtistActionviewSet(APIView):
    permission_classes = (permissions.AllowAny,)
    serializer_class = ArtistActionSerializer
    filter_backends = [
        DjangoFilterBackend,
        filters.SearchFilter,
        filters.OrderingFilter,
    ]
    filterset_fields = ["skill", "languages", "location"]
    skill = Filter(name="skill", lookup_type="in")
    language = Filter(name="languages", lookup_type="in")
    search_fields = ["name", "location__name", "skill__name", "languages__name"]
    ordering_fields = "__all__"

    def get(self, request, *args, **kwargs):
        try:
            ids = request.query_params.get("id", None)
            if ids is not None:
                ids = [int(x) for x in ids.split(",")]
                artists = get_list_or_404(Artist, id__in=ids)
                artist_serializer = ArtistFilterSerializer(artists, many=True)
                return Response(
                    {"artists": artist_serializer.data}, status=status.HTTP_200_OK
                )
            artists = Artist.objects.all().order_by("-professional_rating")
            artist_serializer = ArtistFilterSerializer(artists, many=True)
            return Response(
                {"artists": artist_serializer.data}, status=status.HTTP_200_OK
            )
        except Exception as e:
            return Response(
                artist_serializer.errors,
                status=status.HTTP_400_BAD_REQUEST,
            )

    def post(self, request, *args, **kwargs):
        if request.user.is_anonymous:
            return Response({"error": "User Not Logged In"}, status=401)
        role = Role.objects.get(user=request.user).role
        if role != 'AM':
            return Response({"error": "Unauthorized User"}, status=403)
        try:
            data = request.data
            print(f"data -> {data}")

            if data["has_manager"] == True:
                manager = Manager.objects.create(
                    name=data["manager"]["name"],
                    phone=data["manager"]["phone"],
                    email=data["manager"]["email"],
                )
                data["manager"] = manager.id

            works_links = data["works_links"]
            del data["works_links"]
            works = []
            artist_serializer = ArtistActionSerializer(data=data)
            if artist_serializer.is_valid():
                artist_serializer.save()
                artist = Artist.objects.get(id=artist_serializer.data["id"])
                for work_link in works_links:
                    work = Work(
                        owner=artist
                    )
                    if "name" in work_link:
                        work.name=work_link["name"]
                    if "demo_type" in work_link:
                        work.demo_type=work_link["demo_type"]
                    if "weblink" in work_link:
                        work.weblink=work_link["weblink"]
                    if "details" in work_link:
                        work.details = work_link["details"]
                    if "show_in_top_feed" in work_link:
                        work.show_in_top_feed = work_link["show_in_top_feed"]
                    if "best_work" in work_link:
                        work.best_work = work_link["best_work"]
                    work.save()
                    works.append(work.id)
                artist.works_links.set(works)
                return Response(
                    {
                        "artist": ArtistFilterSerializer(
                            instance=artist, many=False
                        ).data,
                        "message": "artist is created",
                    },
                    status=status.HTTP_201_CREATED,
                )
            return Response(
                artist_serializer.errors, status=status.HTTP_400_BAD_REQUEST
            )
        except Exception as e:
            print(e)
            return Response(
                {"error": "something went's Wrong!", "error_message": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )

    def put(self, request, pk=None):
        if request.user.is_anonymous:
            return Response({"error": "User Not Logged In"}, status=401)
        role = Role.objects.get(user=request.user).role
        if role == 'AM':
            pass
        elif role != 'Artist':
            return Response({"error": "Unauthorized User"}, status=403)


        try:
            if pk is None:
                return Response(
                    {"error": "Artist found with empty id!"},
                    status=status.HTTP_404_NOT_FOUND,
                )

            artist = get_object_or_404(Artist, id=pk)
            if role == 'Artist':
                user = Artist.objects.get(user=request.user)
                if user.id != pk:
                    return Response({"error": "Unauthorized Artist"}, status=403)

            artist_serializer = ArtistActionSerializer(
                instance=artist, data=request.data
            )
            if artist_serializer.is_valid():
                # Delete all previous work objects
                deleted_works = Work.objects.filter(owner=artist)
                deleted_works.delete()
                # Create new work objects
                for work_data in request.data.get("works_links", []):
                    work = Work.objects.create(
                        owner=artist,
                        name=work_data.get("name",artist.name),
                        demo_type=work_data.get("demo_type","other"),
                        weblink=work_data.get("weblink","example.com"),
                        details=work_data.get("details","Write your work details here"),
                        show_in_top_feed=work_data.get("show_in_top_feed",False),
                        best_work=work_data.get("best_work",False),
                        file=work_data.get("file")
                    )
                    artist.works_links.add(work)
                artist_serializer.save()
                return Response(
                    {"message": "Artist is updated"},
                    status=status.HTTP_200_OK,
                )
            else:
                return Response(
                    artist_serializer.errors, status=status.HTTP_400_BAD_REQUEST
                )
        except Exception as e:
            return Response(
                {"error": "Something went wrong!", "error_message": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )

    def delete(self, request, pk=None):
        if request.user.is_anonymous:
            return Response({"error": "User Not Logged In"}, status=401)
        role = Role.objects.get(user=request.user)
        if role.role != 'AM':
            return Response({"error": "Unauthorized User"}, status=403)
        try:
            print("called")
            if pk is None:
                return Response(
                    {"error": "artist not found with empty id!"},
                    status=status.HTTP_404_NOT_FOUND,
                )
            artist = get_object_or_404(Artist, id=pk)
            artist.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)

        except Exception as e:
            return Response(
                {"error": "something went's Wrong!", "error_message": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


class ArtistWorksLinksAPIView(generics.RetrieveUpdateDestroyAPIView):

    def get(self, request, *args, **kwargs):
        artist_id = self.kwargs.get('pk')
        artist = get_object_or_404(Artist, id=artist_id)
        works_links = artist.works_links.all()
        serializer = ArtistWorkLinkSerializer({'works_links': works_links})
        return Response(serializer.data, status=status.HTTP_200_OK)

    def get_object(self):
        work_id = self.kwargs.get('pk')
        try:
            return Work.objects.get(pk=work_id)
        except Work.DoesNotExist:
            return None

    def delete(self, request, *args, **kwargs):
        if request.user.is_anonymous:
            return Response({"error": "User Not Logged In"}, status=401)
        work = self.get_object()
        if not work:
            return Response({"error": "Work not found"}, status=404)

        current_user = Role.objects.filter(user=request.user).first()
        user = Artist.objects.get(user=request.user)
        if current_user.role == 'Artist' and user != work.owner:
            return Response({"error": "Unauthorized Artist"}, status=403)
        elif current_user.role == 'Client':
            return Response({"error": "Unauthorized Client"}, status=403)

        work.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def put(self, request, *args, **kwargs):
        if request.user.is_anonymous:
            return Response({"error": "User Not Logged In"}, status=401)
        work = self.get_object()
        if not work:
            return Response({"error": "Work not found"}, status=404)

        current_user = Role.objects.filter(user=request.user).first()
        user = Artist.objects.get(user=request.user)
        if current_user.role == 'Artist' and user != work.owner:
            return Response({"error": "Unauthorized Artist"}, status=403)
        elif current_user.role == 'Client':
            return Response({"error": "Unauthorized Client"}, status=403)
        tags = request.data.get('tags', [])
        for tag_name in tags:
            tag_name = tag_name.capitalize()
            tag, _ = Tag.objects.get_or_create(name=tag_name)

        serializer = WorkLinkCreateSerializer(work, data=request.data)
        serializer.is_valid(raise_exception=True)
        updated_work = serializer.save()
        is_demo = request.data.get('is_demo', False)
        if is_demo:
            project_demo = ProjectDemo(
                Title=f"{updated_work.owner.name}'s Project Demo",
                artist=updated_work.owner,
                demo_work=updated_work,
                link=updated_work.weblink,
                comment="Add your comment here"
            )
            project_demo.save()
        return Response(serializer.data, status=status.HTTP_200_OK)


class WorkLinkCreateAPIView(generics.CreateAPIView):
    permission_classes = [permissions.IsAuthenticated]
    serializer_class = WorkLinkCreateSerializer

    def post(self, request, *args, **kwargs):
        artist_id = self.kwargs.get('pk')
        try:
            artist = Artist.objects.get(pk=artist_id)
        except Artist.DoesNotExist:
            return Response({"error": "Artist not found"}, status=404)

        current_user = Role.objects.filter(user=request.user).first()
        if current_user.role == 'AM':
            pass
        elif current_user.role != 'Artist':
            return Response({"error": "Unauthorized User"}, status=403)
        if current_user.role == 'Artist':
            user = Artist.objects.get(user=request.user)
            if user.id != artist_id:
                return Response({"error": "Unauthorized Artist"}, status=403)
        weblink = request.data.get('weblink',"example.com")
        tags = request.data.get('tags', [])
        is_demo = request.data.get('is_demo', False)
        best_work = request.data.get('best_work', False)
        demo_type = request.data.get('demo_type', 'Other')
        show_in_top_feed = request.data.get('show_in_top_feed', False)

        work = Work(
            weblink=weblink,
            is_demo=is_demo,
            best_work=best_work,
            demo_type=demo_type,
            owner=artist,
            show_in_top_feed=show_in_top_feed,
        )
        work.save()
        artist.works_links.add(work)

        for tag_name in tags:
            tag_name = tag_name.capitalize()
            tag, _ = Tag.objects.get_or_create(name=tag_name)
            work.tags.add(tag)
        if is_demo:
            project_demo = ProjectDemo(
                Title=f"{work.owner.name}'s Project Demo",
                artist=artist,
                demo_work=work,
                link=weblink,
                comment="Add your comment here"
            )
            project_demo.save()

        serializer = self.get_serializer(work)
        return Response(serializer.data, status=status.HTTP_201_CREATED)


# ================= product manager API's =======================
class ArtistFeedBackViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = ArtistFeedbackSerializer
    queryset = ArtistFeedback.objects.all()


class ProjectFeeViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = ProjectFeeSerializers
    queryset = ProjectFee.objects.all()


class ArtistRequestViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.AllowAny,)
    serializer_class = ArtistRequestSerializers

    def get_queryset(self):
        return ArtistRequest.objects.order_by(F('id').desc())

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        if serializer.is_valid():
            self.perform_create(serializer)
            headers = self.get_success_headers(serializer.data)
            return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data)
        if serializer.is_valid():
            self.perform_update(serializer)
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_204_NO_CONTENT)

    # Get a single object with id
    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        return Response(serializer.data)
# ----------------------- all projects api -----------------------------
class AllProjectViewSet(viewsets.ModelViewSet):
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = ProjectSerializerMini

    def get_queryset(self):
        role = Role.objects.get(user=self.request.user).role
        if role == "Client":
            return (
                Project.objects.filter(client__user=self.request.user)
                .exclude(stage="DreamProject")
                .order_by("-id")
            )
        elif role == "PM":
            return Project.objects.exclude(stage="DreamProject").order_by("-id")
        return None


# ----------------------- all projects api end -----------------------------

# --------------------- update the project title api ---------------------------


class ProjectTitleViewSet(APIView):
    permission_classes = (permissions.AllowAny,)

    def patch(self, request, id=None):
        try:
            if request.data["title"] in ["", None]:
                return Response(
                    {"error": "title not be empty"}, status=status.HTTP_400_BAD_REQUEST
                )
            project = get_object_or_404(Project, id=id)
            project_serializer = ProjectSerializerMini(
                instance=project, data={"title": request.data["title"]}
            )
            if project_serializer.is_valid():
                project_serializer.save()
                return Response(
                    {"project": project_serializer.data}, status=status.HTTP_200_OK
                )
            return Response(
                project_serializer.errors, status=status.HTTP_400_BAD_REQUEST
            )
        except Exception as e:
            return Response(
                {"error": "something went wrongs.", "message": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# --------------------- update the project title api end ---------------------------


# ------------------------------- project assign api ------------------------------
class ProjectAssignArtistActionViewSet(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def patch(self, request, projectId=None):
        try:
            project = get_object_or_404(Project, id=projectId)
            add_artists = request.data["add_artists"]
            remove_artists = request.data["remove_artists"]
            for artistId in add_artists:
                project.assigned_artists.add(artistId)
            for artistId in remove_artists:
                project.assigned_artists.remove(artistId)
            project.save()
            return Response(
                {
                    "project": ProjectSerializer(project,context={'request': request}, many=False).data,
                    "message": "Assign Artist is updated.",
                },
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# -------------------------------- shortlisted artist api -------------------------------
class ProjectShortlistedArtistViewSet(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def patch(self, request, projectId=None, artistId=None):
        try:
            project = get_object_or_404(Project, id=projectId)
            artist = get_object_or_404(Artist, id=artistId)
            project.shortlisted_artists.add(artist)
            project.save()
            return Response(
                {
                    "project": ProjectSerializer(project, context={'request': request},many=False).data,
                    "message": "Assign Artist is updated.",
                },
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# -------------------------------- shortlisted artist api -------------------------------

# ---------------------------------- remove shortlisted artist api ----------------------------


class ProjectShortlistedArtistRemoveViewSet(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def patch(self, request, projectId=None, artistId=None):
        try:
            project = get_object_or_404(Project, id=projectId)
            artist = get_object_or_404(Artist, id=artistId)
            project.shortlisted_artists.remove(artist)
            project.save()
            return Response(
                {
                    "project": ProjectSerializer(project,context={'request': request}, many=False).data,
                    "message": "Assign Artist is updated.",
                },
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# --------------------------------remove shortlisted artist api -------------------------------

# ------------------------------ assign artist ---------------------------------


class ProjectAssignArtistViewSet(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    # @extend_schema(
    #     request={
    #         'type': 'object',
    #         'properties': {
    #             'projectId': {'type': 'integer'},
    #             'artistId': {'type': 'integer'},
    #         },
    #         'required': ['projectId', 'artistId'],
    #     },
    #     responses={

    #         200: {'description': 'Success'},
    #         400: {'description': 'Bad request'},
    #     },
    #     tags=['Projects'],
    # )
    def patch(self, request, projectId=None, artistId=None):
        try:
            project = get_object_or_404(Project, id=projectId)
            artist = get_object_or_404(Artist, id=artistId)
            if not project.shortlisted_artists.filter(id=artistId).exists():
                return Response(
                    {"message": "artist is not shortlisted at."},
                    status=status.HTTP_400_BAD_REQUEST,
                )
            project.shortlisted_artists.remove(artist)
            project.assigned_artists.add(artist)
            project.save()
            return Response(
                {
                    "project": ProjectSerializer(project,context={'request': request}, many=False).data,
                    "message": "Assign Artist is updated.",
                },
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# ------------------------------ unassign artist ---------------------------------
class ProjectUnAssginArtistViewSet(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    # @extend_schema(
    #     request={
    #         'type': 'object',
    #         'properties': {
    #             'projectId': {'type': 'integer'},
    #             'artistId': {'type': 'integer'},
    #         },
    #         'required': ['projectId', 'artistId'],
    #     },
    #     responses={
    #         status.HTTP_200_OK: {
    #             'type': 'object',
    #             'properties': {
    #                 'project': ProjectSerializer,
    #                 'message': {'type': 'string'},
    #             },
    #         },
    #         status.HTTP_400_BAD_REQUEST: {'type': 'object', 'properties': {'message': {'type': 'string'}}},
    #     }
    # )
    def patch(self, request, projectId=None, artistId=None):
        try:
            project = get_object_or_404(Project, id=projectId)
            artist = get_object_or_404(Artist, id=artistId)

            if not project.assigned_artists.filter(id=artistId).exists():
                return Response(
                    {"message": "artist is not assigned at."},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            project.assigned_artists.remove(artist)
            project.shortlisted_artists.add(artist)
            project.save()
            return Response(
                {
                    "project": ProjectSerializer(project,context={'request': request}, many=False).data,
                    "message": "Assign Artist is updated.",
                },
                status=status.HTTP_200_OK,
            )
        except Exception as e:
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# ------------------------------- project assign api ------------------------------


# -------------------------- create new Porject --------------------------------------
class CreateNewProject(APIView):
    permission_classes = (permissions.IsAuthenticated,)

    # @extend_schema(
    #     request=ProjectSerializer,
    #     responses={
    #         status.HTTP_201_CREATED: ProjectSerializer,
    #         status.HTTP_400_BAD_REQUEST: 'string',
    #     }
    # )
    def post(self, request):
        try:
            data = request.data
            print(request.data)
            client = get_object_or_404(Client, user=request.user)
            data["client"] = client.id
            project_serializer = ProjectSerializer(data=data,context={'request': request})
            print("PASSED 2")
            print(f"project serializer {project_serializer}")
            print("passed 3")
            if project_serializer.is_valid():
                project_serializer.save()

                project = Project.objects.get(id=project_serializer.data["pk"])
                ChatBot.objects.create(status="ON", project=project)

                return Response(project_serializer.data, status=status.HTTP_201_CREATED)
            print("response rror")
            return Response(
                project_serializer.error_messages, status=status.HTTP_400_BAD_REQUEST
            )
        except Exception as e:
            print("error occurdd")
            return Response(
                {"message": "something wents wrong!", "error": str(e)},
                status=status.HTTP_400_BAD_REQUEST,
            )


# adbhutio-server
# ---------------------------- demo project -----------------------------------------


class DemoView(APIView):
    permission_classes = (
        IsAuthenticated,
        ArtistManagerPermisson,
    )

    # @extend_schema(
    #     responses={
    #         status.HTTP_200_OK: {
    #             'type': 'object',
    #             'properties': {
    #                 'works': {
    #                     'type': 'array',
    #                     'items': WorkFeedSerializer,
    #                 },
    #                 'message': {'type': 'string'},
    #             },
    #         },
    #     }
    # )
    def get(self, request):
        work = WorkFeedSerializer(Work.objects.all(), many=True)
        return Response(
            {"works": work.data, "message": "for permission check"},
            status=status.HTTP_200_OK,
        )


# ---------------------------- demo project end -----------------------------------------


