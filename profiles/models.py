from django.contrib.auth.models import User
from django.db import models
from phonenumber_field.modelfields import PhoneNumberField

from misc.models import *

from .choices import *

# Create your models here.

# ==============  user roles ======================


class Role(models.Model):
    role = models.CharField(max_length=100, default="Client", choices=ROLE_TYPE)

    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.email + " - " + self.role


def savenameLocationForAggreement(self, filename):
    return f"userdata/{self.name}_files/aggreement--{filename}"


def saveNameLocationForProfilePic(self, filename):
    return f"userdata/{self.name}_work_files/{filename}"


class TemplateProjects(models.Model):
    name = models.CharField(max_length=100, default="")
    details = models.TextField(default="", blank=True)
    skills = models.ManyToManyField(
        Skill, default="", blank=True, related_name="%(class)s_Skill"
    )
    weblink = models.URLField(max_length=100, default="", blank=True)
    file = models.FileField(upload_to="work_files", default="", blank=True)

    def __str__(self):
        return self.name


class Work(models.Model):
    name = models.CharField(max_length=100, default="", blank=True)
    details = models.TextField(default="", blank=True)
    weblink = models.URLField(max_length=100, default="", blank=True)
    show_in_top_feed = models.BooleanField(default=False)
    # skill = models.ManyToManyField(
    #    Skill, default='', blank=True, related_name='%(class)s_Skill')
    is_demo = models.BooleanField(default=False)
    owner = models.ForeignKey(
        "Artist", on_delete=models.CASCADE, default="", related_name="%(class)s_Artist"
    )
    from_client = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    file = models.FileField(upload_to="work_files", default="", blank=True)
    demo_type = models.CharField(
        max_length=100, default="", blank=True, choices=DEMO_TYPE
    )

    def __str__(self):
        return (
            self.owner.name
            + " - "
            + self.demo_type
            + " - "
            + ("Best Work " if self.show_in_top_feed else "Work_ID " + str(self.id))
        )


class SocialProfile(models.Model):
    name = models.CharField(max_length=30)
    url = models.URLField()
    client = models.ForeignKey("Client", on_delete=models.CASCADE)


# class Company(models.Model):
#     name = models.CharField(max_length=100, default="")
#     url = models.URLField()

#     class Meta:
#         verbose_name_plural = "Companies"

#     def __str__(self):
#         return self.name


class Client(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=100, default="", blank=True)
    email = models.EmailField(unique=True, null=True, default="")
    # bio = models.TextField(default="", blank=True)

    # new attributte
    # role = models.OneToOneField(Role, null=True, on_delete=models.SET_NULL, related_name=)
    phone = PhoneNumberField(null=True, blank=True, unique=False)
    company = models.CharField(max_length=50, blank=True, null=True, default="")
    website = models.URLField(max_length=255, blank=True, null=True)
    image = models.ImageField(
        default="profile_pics\default.jpg", upload_to="profile_pics"
    )

    # Login details
    email_confirmed = models.BooleanField(default=False)

    # Eother
    projects = models.ManyToManyField(
        "Project", default="", blank=True, related_name="client_projects"
    )
    recommended_artists = models.ManyToManyField(
        "Artist", default="", blank=True, related_name="client_recommended_artists"
    )

    # Gray   Man
    client_previous_payout = models.IntegerField(default=0, blank=True)
    production_suggested_project_advance = models.FloatField(
        default=0, blank=True
    )  # in percent
    latest_project_advance = models.FloatField(default=0, blank=True)  # in percent
    latest_client_payout_status = models.CharField(
        max_length=100, default="", blank=True, choices=CLIENT_PAYOUT_STATUS
    )
    total_client_payout = models.FloatField(default=0, blank=True)

    contract_document_signing_status = models.CharField(
        max_length=100,
        default="",
        blank=True,  # options=CONTRACT_SIGNING_STATUS
    )

    def __str__(self):
        return self.name + " c" + str(self.id) + " u" + str(self.user.id)


class Artist(models.Model):
    # Base
    name = models.CharField(max_length=100, default="")
    skill = models.ManyToManyField(Skill, default="", blank=True)
    artist_intro = models.TextField(default="", blank=True)
    profile_pic = models.ImageField(
        upload_to=saveNameLocationForProfilePic, default="avatar.png", blank=True
    )
    location = models.ForeignKey(
        Location, on_delete=models.SET_NULL, null=True, blank=True
    )
    languages = models.ManyToManyField(Language, default="", blank=True)
    age = models.IntegerField(default=0)
    genre = models.ManyToManyField(Genre, default="", blank=True)
    email = models.EmailField(max_length=100, default="", blank=True)
    phone = models.IntegerField(default=0, blank=True)
    
    full_time = models.BooleanField(default=False)
    part_time = models.BooleanField(default=False)
    # Conditional only on  skill = 'Actor'

    other_arts = models.CharField(max_length=100, default="", blank=True)
    works_links = models.ManyToManyField(Work, default="", blank=True)
    social_links = models.CharField(default="", blank=True, max_length=200)

    has_manager = models.BooleanField(default=False, blank=True)
    manager = models.ForeignKey(
        "Manager",
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_to_Manager_relation",
    )
    budget_range = models.CharField(
        max_length=100, default="Less Than 10,000", blank=True, choices=BUDGET_RANGE
    )
    budget_idea = models.TextField(default="", blank=True)
    am_notes = models.TextField(default="", blank=True)
    pm_notes = models.TextField(default="", blank=True)
    professional_rating = models.IntegerField(default=0)  # 1-10
    attitude_rating = models.IntegerField(default=0)  # 1 - 10
    has_agreement = models.BooleanField(default=False)
    agreement = models.FileField(
        upload_to=savenameLocationForAggreement, default="", blank=True
    )

    def __str__(self):
        return self.name + " " + str(self.id)


class ArtistFeedback(models.Model):
    artist = models.ForeignKey(
        Artist,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_Artist",
    )
    pre_project_feedbace = models.TextField(default="", blank=True)
    on_project_feedback = models.TextField(default="", blank=True)
    post_project_feedback = models.TextField(default="", blank=True)

    def __str__(self):
        return self.artist.name + "--" + " Feedback"


class ProjectDemo(models.Model):
    artist = models.ForeignKey(
        Artist,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_Artist",
    )
    demo_work = models.ForeignKey(
        Work,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_DemoWork",
    )
    project = models.ForeignKey(
        "Project",
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_Project",
    )

    comment = models.TextField(default="", blank=True)
    status = models.CharField(
        max_length=100, default="", blank=True, choices=PROJECT_DEMO_STATUS
    )

    def __str__(self):
        return str(self.artist.name) + "--" + str(self.project.title) + "--" + " Demo"


class Project(models.Model):
    name = models.CharField(max_length=255, null=True)
    slug = models.SlugField(null=True, blank=True)
    title = models.CharField(max_length=500, null=True, blank=True)
    client = models.ForeignKey(
        Client,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_Artist",
    )
    stage = models.CharField(
        max_length=100, default="", blank=True, choices=PROJECT_STAGE
    )
    project_template = models.ForeignKey(
        TemplateProjects,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="%(class)s_to_TemplateProjects_relation",
    )

    brief = models.TextField(default="", blank=True)
    production_solution = models.TextField(default="", blank=True)
    comments = models.TextField(default="", blank=True)
    reference_links = models.TextField(default="", blank=True)

    shortlisted_artists = models.ManyToManyField(
        Artist, default="", blank=True, related_name="%(class)s_shortlistedArtist"
    )
    assigned_artists = models.ManyToManyField(
        Artist, default="", blank=True, related_name="%(class)s_AssignedArtist"
    )
    showcase_demos = models.ManyToManyField(Work, default="", blank=True)

    project_demos = models.ManyToManyField(
        ProjectDemo, default="", blank=True, related_name="%(class)s_ProjectDemo"
    )
    post_project_client_feedback = models.TextField(default="", blank=True)
    contract_status = models.BooleanField(default=False, blank=True)

    #  project fee fields
    solution_fee = models.FloatField(default=0, blank=True)
    production_advance = models.FloatField(default=0, blank=True)
    negotiated_advance = models.FloatField(default=0, blank=True)
    final_advance = models.FloatField(default=0, blank=True)
    assigned_artist_payouts = models.FloatField(default=0, blank=True, null=True)
    post_project_client_total_payout = models.FloatField(default=0, blank=True)

    # assigned_artist_payouts = models.ManyToManyField(Artist,blank=True,
    #  default='',related_name='assigned_artist_payout')
    advance_status = models.CharField(
        max_length=100, default="Pending", blank=True, choices=PROJECT_ADVANCE_STATUS
    )
    artist_payout_status = models.CharField(
        max_length=100, default="In Progress", choices=ARTIST_PAYOUT_STATUS
    )
    project_fee_Status = models.CharField(
        max_length=100, default="Unpaid", blank=True, choices=PROJECT_FEE_STATUS
    )
    final_fee_settlement_status = models.BooleanField(default=False, blank=True)
    artist_discussion_updates = models.TextField(default="", null=True, blank=True)

    def __str__(self):
        return (
            str(self.project_template and self.project_template.name)
            + " - "
            + str(self.stage)
            + " - "
            + str(self.id)
        )


class ProjectFee(models.Model):
    project = models.ForeignKey(
        Project,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="ProjectFee_to_Project_relation",
    )
    client = models.ForeignKey(
        Client,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="ProjectFee_to_client_relation",
    )
    solution_fee = models.FloatField(default=0, blank=True)
    production_advance = models.FloatField(default=0, blank=True)
    negotiated_advance = models.FloatField(default=0, blank=True)
    final_advance = models.FloatField(default=0, blank=True)
    advance_status = models.CharField(
        max_length=100, default="", blank=True, choices=PROJECT_ADVANCE_STATUS
    )
    assigned_artist_payouts = models.ManyToManyField(Artist, default="")
    artist_payout_status = models.CharField(
        max_length=100, default="", choices=ARTIST_PAYOUT_STATUS
    )
    final_fee_settlement_status = models.BooleanField(default=False, blank=True)
    post_project_client_total_payout = models.FloatField(default=0, blank=True)
    project_fee_Status = models.CharField(
        max_length=100, default="", blank=True, choices=PROJECT_FEE_STATUS
    )

    def __str__(self):
        return str(self.project.title) or str(self.id)


class ArtistRequest(models.Model):
    skill = models.ManyToManyField(
        Skill, default="", blank=True, related_name="%(class)s_Skill"
    )

    location = models.ForeignKey(
        Location,
        on_delete=models.SET_NULL,
        blank=True,
        null=True,
        related_name="%(class)s_Location",
    )
    genre = models.ManyToManyField(Genre, default="", blank=True)
    languages = models.ManyToManyField(Language, default="", blank=True)
    other_performin_arts = models.TextField(default="", blank=True)

    budget_range = models.CharField(max_length=100, default="", blank=True)
    budget_idea = models.TextField(default="", blank=True)

    project = models.ForeignKey(
        Project,
        on_delete=models.CASCADE,
        default="",
        blank=True,
        null=True,
        related_name="ArtistRequest_to_Project_relation",
    )

    production_hiring = models.IntegerField(default=0, blank=True)
    service_hiring = models.IntegerField(default=0, blank=True)
    shortlisted_artists = models.ManyToManyField(
        Artist, default="", related_name="%(class)s_ShortlistedArtist"
    )

    rejected_artists = models.ManyToManyField(
        Artist, default="", related_name="%(class)s_RejectedArtist"
    )

    target = models.IntegerField(default=0, blank=True)
    comments = models.TextField(default="", blank=True)
    hiring_status = models.CharField(
        max_length=100, default="", blank=True, choices=HIRING_STATUS
    )


class Manager(models.Model):
    name = models.CharField(max_length=100, default="", blank=True)
    phone = models.IntegerField(default=0)
    email = models.EmailField(max_length=100, default="", blank=True)

    def __str__(self):
        return self.name


class ChatGPTMessage(models.Model):
    message = models.TextField(default="")

    def __str__(self):
        return "chatGPT message"
