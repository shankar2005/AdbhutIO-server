from django.urls import path, re_path

from .views import *

app_name = "profiles"

urlpatterns = [
    # ==================== artist manager urls ===========================
    # re_path(r'api/v1/artist_action/<int:pk>/?$', ArtistActionviewSet.as_view(), name="artist_action_pk")
    path('api/v1/get_artist_demos/<int:pk>/', ArtistProjectDemos.as_view(), name='template-projects-works'),
    path('api/v1/get_content_work/<int:pk>/', TemplateProjectsWorksView.as_view(), name='template-projects-works'),
    path('api/v1/get_feed/<int:pk>/', TemplateProjectsArtistSkillView.as_view(), name='template-projects-skills'),
    path('api/v1/get_project_demo/<int:pk>/', ProjectDemoDetailView.as_view(), name='project-demo-detail'),
    path('api/v1/artist_create_link/<int:pk>/',WorkLinkCreateAPIView.as_view(), name='artist_works_create'),
    path('api/v1/artist_works_links/<int:pk>/', ArtistWorksLinksAPIView.as_view(), name='artist_works_links'),
    path('api/v1/assign_demos_to_project/<int:pk>/',AssignProjectDemosView.as_view(),name='project-assign-project-demos'),
    path('api/v1/assign_project_to_demo/<int:pk>/',AssignDemosProjectView.as_view(),name='project-demo-assign-project'),
    path('api/v1/demos_list/', ProjectDemoListView.as_view(), name='project-demo-list'),
    path('api/v1/un_assign_demo_artist/<int:pk>/', UnAssignArtistView.as_view(), name='project-demo-assign-artist'),
    path('api/v1/assign_demo_artist/<int:pk>/', AssignArtistView.as_view(), name='project-demo-assign-artist'),
    path('api/v1/demo_link_doc/', ProjectDemoAddLinkOrDoc.as_view(), name='project-demo-list-create'),
    path('api/v1/edit_tags/<int:pk>/', WorkTagUpdateAPIView.as_view(), name='work-tags'),
    path('api/v1/chatbot_status/<int:project_id>/', get_chatbot_status, name='chatbot_status_api'),
    path('api/v1/total_artist/', TotalArtistCountAPIView.as_view(), name='total-artist'),
    path('api/v1/artist_count/',SkillListAPIView.as_view(), name='skill-list'),
    path('api/v1/manager_projects/<int:id>/', ProjectsByPMAPIView.as_view(), name='projects_by_pm'),
    path("api/v1/artist_action/", ArtistActionviewSet.as_view(), name="artist_action"),
    path('api/v1/linked_works/', link_unassigned_works, name='link_unassigned_works'),
    path(
        "api/v1/artist_action/<int:pk>/",
        ArtistActionviewSet.as_view(),
        name="artist_action_pk",
    ),
    path("api/v1/artist_list/", ArtistListAPIView.as_view(), name="artist_list"),
    # ---------------------------- project urls ----------------------------------------------
    path(
        "api/v1/delete_project/<int:pk>/",
        ProjectDeleteViewSet.as_view(),
        name="delete_project",
    ),
    path(
        "api/v1/update_title/<int:id>/",
        ProjectTitleViewSet.as_view(),
        name="update_title",
    ),
    path(
        "api/v1/assign_artist_action/<int:projectId>/",
        ProjectAssignArtistActionViewSet.as_view(),
        name="assign_artist_action",
    ),
    path(
        "api/v1/assign_artist/<int:projectId>/<int:artistId>/",
        ProjectAssignArtistViewSet.as_view(),
        name="assign_artist",
    ),
    path(
        "api/v1/unassign_artist/<int:projectId>/<int:artistId>/",
        ProjectUnAssginArtistViewSet.as_view(),
        name="unassign_artist",
    ),
    path(
        "api/v1/shortlist_artist/<int:projectId>/<int:artistId>/",
        ProjectShortlistedArtistViewSet.as_view(),
        name="shortlist_artist",
    ),
    path(
        "api/v1/decline_artist/<int:projectId>/<int:artistId>/",
        ProjectShortlistedArtistRemoveViewSet.as_view(),
        name="decline_artist",
    ),
    # create project
    path(
        "api/v1/create_new_project/",
        CreateNewProject.as_view(),
        name="create_new_project",
    ),
    path("api/v1/demo/", DemoView.as_view(), name="demo"),
]
