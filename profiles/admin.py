from django.contrib import admin
from import_export import resources

from .modelAdmin import *
from .models import *

# Register your models here.
# admin.site.register(Company)
admin.site.register(Demo_Type)
admin.site.register(ChatBot)
admin.site.register(TemplateProjectSkill)
admin.site.register(SocialProfile)
admin.site.register(Role, RoleAdmin)
admin.site.register(Work, WorkAdmin)
admin.site.register(Client, ClientAdmin)
admin.site.register(Artist, ArtistAdmin)
admin.site.register(ArtistFeedback, ArtistFeedbackAdmin)
admin.site.register(ProjectDemo, ProjectDemoAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(ProjectFee, ProjectFeeAdmin)
admin.site.register(ArtistRequest, ArtistRequestAdmin)

admin.site.register(TemplateProjects, TemplateProjectsAdmin)

admin.site.register(Manager)
admin.site.register(ChatGPTMessage)


# class Artist


class ArtistResource(resources.ModelResource):
    location = fields.Field(
        column_name="location",
        attribute="location",
        widget=ForeignKeyWidget(Location, field="name"),
    )

    skill = fields.Field(
        column_name="skill",
        attribute="skill",
        widget=ManyToManyWidget(Skill, field="name"),
    )

    languages = fields.Field(
        column_name="languages",
        attribute="languages",
        widget=ManyToManyWidget(Language, field="name"),
    )

    genre = fields.Field(
        column_name="genre",
        attribute="genre",
        widget=ManyToManyWidget(Genre, field="name"),
    )

    manager = fields.Field(
        column_name="manager",
        attribute="manager",
        widget=ForeignKeyWidget(Manager, field="name"),
    )

    def before_import_row(self, row, **kwargs):
        author_name = row["author"]
        Author.objects.get_or_create(name=author_name, defaults={"name": author_name})

    def skip_row(self, instance, original, row, import_validation_errors=None):
        name = row["manager_name"]
        phone = row["manager_contact_no"]
        email = row["manager_contact_email"]
        if name != "":
            manager = Manager.objects.create(name=name, phone=phone, email=email)
            instance.manager = manager

        link1 = row["best_work_link"]
        link2 = row["work_link_2"]
        link3 = row["work_link_3"]
        if link1 != "":
            work1 = Work.objects.create(
                weblink=link1, show_in_top_feed=True, owner=instance
            )
            instance.works_links.add(work1)
        if link2 != "":
            work2 = Work.objects.create(weblink=link2, owner=instance)
            instance.works_links.add(work2)
        if link2 != "":
            work3 = Work.objects.create(weblink=link3, owner=instance)
            instance.works_links.add(work3)
        return False

    class Meta:
        model = Artist
        exclude = (
            "manager",
            "work_links",
        )
