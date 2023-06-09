import phonenumbers
from django import forms
from django.contrib import admin
from import_export import fields, resources
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import *
from phonenumber_field.phonenumber import PhoneNumber
from phonenumber_field.widgets import PhoneNumberPrefixWidget

from misc.models import *

from .models import *  # , Company


class ContactForm(forms.ModelForm):
    class Meta:
        widgets = {  # Here
            "phone": PhoneNumberPrefixWidget(initial="US"),
        }


class SkillInlineAdmin(admin.TabularInline):
    model = TemplateProjects.skills.through


class TemplateProjectsAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    filter_horizontal = ("skills",)
    fieldsets = [("Work", {"fields": ["name", "details", "weblink", "file"]})]

    inlines = (SkillInlineAdmin,)


class WorkAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    fieldsets = [
        (
            "Work",
            {
                "fields": [
                    "owner",
                    "name",
                    "show_in_top_feed",
                    "demo_type",
                    ("weblink", "file"),
                    "is_demo",
                    "details",
                    "from_client",
                    "is_active",
                    "best_work",
                    "tags",
                ]
            },
        )
    ]


# class CompanyInline(admin.TabularInline):
#     model = Company


# class CompanyAdmin(admin.ModelAdmin):
#     list_display = ('client', 'client')

#     def client(self, obj):
#         return ",".join([k.name for k in obj.client.all()])


class SocialProfileInline(admin.TabularInline):
    model = SocialProfile


class ClientAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    inlines = [SocialProfileInline]

    filter_horizontal = ("projects", "recommended_artists")
    fieldsets = [
        (
            "Contact",
            {
                "fields": [
                    "name",
                    "email",
                    "user",
                    # "bio",
                    "image",
                    "phone",
                    "company",
                ]
            },
        ),
        (
            "Contract",
            {
                "fields": [
                    "projects",
                    "client_previous_payout",
                    "production_suggested_project_advance",
                    "latest_project_advance",
                    "latest_client_payout_status",
                    "total_client_payout",
                    "contract_document_signing_status",
                    "recommended_artists",
                ]
            },
        ),
    ]


class LocationForeignKeyWidget(ForeignKeyWidget):
    def clean(self, value, row=None, **kwargs):
        try:
            return super().clean(value)
        except self.model.DoesNotExist:
            Location.objects.create(name=self.value)
            # logger.warning(f"instance matching '{value}' does not exist")


class ArtistResource(resources.ModelResource):
    location = fields.Field(
        column_name="location",
        attribute="location",
        widget=LocationForeignKeyWidget(Location, field="name"),
    )

    skill = fields.Field(
        column_name="skill",
        attribute="skill",
        widget=ManyToManyWidget(Skill, field="name", separator=","),
    )

    languages = fields.Field(
        column_name="language",
        attribute="languages",
        widget=ManyToManyWidget(Language, field="name"),
    )

    genre = fields.Field(
        column_name="genre",
        attribute="genre",
        widget=ManyToManyWidget(Genre, field="name", separator=","),
    )

    # works_links = fields.Field(
    #     column_name='works_links',
    #     attribute='works_links',
    #     widget=ManyToManyWidget(Genre, field='weblink', separator=','))

    manager = fields.Field(
        column_name="manager",
        attribute="manager",
        widget=ForeignKeyWidget(Manager, field="name"),
    )

    def after_save_instance(self, instance, using_transactions, dry_run):
        self.instance = instance
        return super().after_save_instance(instance, using_transactions, dry_run)

    def before_import_row(self, row, **kwargs):
        skill_name = row["skill"]
        skill, _ = Skill.objects.get_or_create(
            name=skill_name, defaults={"name": skill_name}
        )

        if row["genre"] or row["genre"] != "" or row["genre"] is not None:
            genre_names = str(row["genre"])
        genre_names = [genre.strip() for genre in genre_names.split(",")]
        genres = []
        for name in genre_names:
            genre, _ = Genre.objects.get_or_create(name=name, defaults={"name": name})
            genres.append(genre)
        for genre in genres:
            skill.genres.add(genre)
        skill.save()
        # row["genre"] = genres

        language_name = row["language"]
        language_names = [language.strip() for language in row["language"].split(",")]
        languages = []
        for name in language_names:
            lang, _ = Language.objects.get_or_create(name=name, defaults={"name": name})
        #     languages.append(lang)
        # row["genre"] = genres

        location_name = row["location"]
        Location.objects.get_or_create(
            name=location_name, defaults={"name": location_name}
        )

        # works_links_names = [works_links.strip() for works_links in row["works_links"].split(',')]
        # works_linkss = []
        # for name in works_links_names:
        #     works_links, _ = Work.objects.get_or_create(weblink=name, defaults={"weblink": name})
        #     works_linkss.append(works_links)

    def after_import_row(self, row, row_result, row_number=None, **kwargs):
        # Set the foreign key to the category model
        instance = self.instance

        print(f"works_links {row['works_links']}")

        if (
            row["works_links"] != "https://empty.com"
            and row["works_links"]
            or row["works_links"] != ""
            or row["works_links"] is not None
        ):
            works_links_urls = str(row["works_links"])
            works_links_names = [
                works_links.strip() for works_links in works_links_urls.split(",")
            ]

            works_linkss = []
            for name in works_links_names:
                works_links, _ = Work.objects.get_or_create(
                    weblink=name,
                    owner=instance,
                    demo_type="Other",
                    defaults={"weblink": name},
                )
                works_linkss.append(works_links)

        best_link = row["best_link"]
        demo_type = row["demo_type"]
        Demo_Type.objects.get_or_create(name=demo_type, defaults={"name": demo_type})
        print(f"best link -> {best_link}")
        if best_link != "https://empty.com":
            # if best_link is not None or best_link!="" or len(best_link) !=0:
            Work.objects.create(
                weblink=best_link,
                best_work=True,
                owner=instance,
                demo_type=demo_type,
                show_in_top_feed=True,
            )

        # phone_str = row['phone']
        # phone_number_string = f'+91{str(phone_str[1:-2])}'
        # phone_number_obj = PhoneNumber().parse(phone_number_string)
        # instance.phone = phone_number_obj
        # instance.save()

        # phone = '"{}"'.format(row["phone"])
        # phone = f'+91{phone}'
        # x = phonenumbers.parse(phone, None)
        # instance.phone = x
        # instance.save()

        # # phone = '"{}"'.format(row["phone"])
        # # instance.phone = PhoneNumber.from_string(str(phone))
        # # instance.save()

        phone_str = f"+91{str(row['phone'])[1:-2]}"
        print(f"phone_str {phone_str}")
        instance.phone = phone_str
        print(f"instandphone {instance.phone}")
        instance.save()

    # def skip_row(self, instance, original, row, import_validation_errors=None):
    #     # name = row['manager_name']
    #     # phone = row['manager_contact_no']
    #     # email = row['manager_contact_email']
    #     # del row['manager_name']
    #     # del row['manager_contact_no']
    #     # del row['manager_contact_email']
    #     # if name != "":
    #     #     manager = Manager.objects.create(name=name, phone=phone, email=email)
    #     #     instance.manager = manager

    #     link1 = row['best_work_link']
    #     link2 = row['work_link1']
    #     link3 = row['work_link2']
    #     if link1 != "":
    #       work1 = Work.objects.create(weblink=link1, show_in_top_feed=True, owner=instance)
    #       instance.works_links.add(work1)
    #     if link2 != "":
    #         work2 = Work.objects.create(weblink=link2, owner=instance)
    #         instance.works_links.add(work2)
    #     if link3 != "":
    #         work3 = Work.objects.create(weblink=link3, owner=instance)
    #         instance.works_links.add(work3)
    #     return False

    class Meta:
        model = Artist
        exclude = ("manager", "works_links")


class ArtistAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    filter_horizontal = ("skill", "genre", "languages", "works_links")
    form = ContactForm
    # list_display = ('get_works_links',)

    # def get_works_links(self, obj):
    #     return "\n".join([p.weblink for p in obj.works_links.all()])

    fieldsets = [
        (
            "Contact",
            {
                "fields": [
                    ("name", "age"),
                    ("artist_intro"),
                    ("email", "phone"),
                    ("skill", "genre"),
                    ("location", "languages"),
                    "profile_pic",
                    "social_profile",
                    "profile_image",
                    "relocation",
                    "best_link",
                    "min_budget",
                    "max_budget",
                    "ctc_per_annum",
                ]
            },
        ),
        (
            "Work",
            {
                "fields": [
                    "works_links",
                    "social_links",
                    ("has_manager", "manager"),
                    "other_arts",
                    ("full_time", "part_time"),
                ]
            },
        ),
        (
            "Contract",
            {
                "fields": [
                    "has_agreement",
                    "agreement",
                    ("professional_rating", "attitude_rating"),
                    ("budget_range", "budget_idea"),
                    (
                        "am_notes",
                        "pm_notes",
                    ),
                ]
            },
        ),
    ]
    resource_classes = [ArtistResource]


class ArtistFeedbackAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    fieldsets = [
        (
            "Feedback",
            {
                "fields": [
                    "artist",
                    "pre_project_feedbace",
                    "on_project_feedback",
                    "post_project_feedback",
                ]
            },
        )
    ]


class ProjectDemoAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    fieldsets = [
        ("Project", {"fields": ["artist", "demo_work", "project"]}),
        ("Review", {"fields": ["comment", "status", "document"]}),
    ]


class ProjectAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_filter = ("client",)
    filter_horizontal = (
        "shortlisted_artists",
        "assigned_artists",
        "showcase_demos",
        "project_demos",
    )

    fieldsets = (
        (
            "Project Details",
            {
                "fields": [
                    ("name", "slug", "title"),
                    "client",
                    ("stage", "project_template"),
                    "visibility",
                ]
            },
        ),
        (
            "Brief",
            {
                "fields": [
                    "brief",
                    "reference_links",
                    "production_solution",
                    "comments",
                    "artist_discussion_updates",
                ]
            },
        ),
        ("Artist details", {"fields": ["shortlisted_artists", "assigned_artists"]}),
        ("Project Demos", {"fields": ["showcase_demos", "project_demos"]}),
        ("Feedback", {"fields": ["post_project_client_feedback", "contract_status"]}),
        (
            "project Fees",
            {
                "fields": [
                    "assigned_artist_payouts",
                    ("solution_fee", "production_advance"),
                    ("negotiated_advance", "final_advance"),
                    ("advance_status", "artist_payout_status"),
                    "final_fee_settlement_status",
                    "post_project_client_total_payout",
                    "project_fee_Status",
                ]
            },
        ),
        (
            "Production Manager",
            {
                "fields": [
                    "production_manager",
                ]
            },
        ),
    )

    def get_readonly_fields(self, request, obj=None):
        readonly_fields = super().get_readonly_fields(request, obj)
        if obj and obj.production_manager:
            readonly_fields += ("production_manager",)
        return readonly_fields


class ProjectFeeAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    fieldsets = [
        ("Project", {"fields": ["project", "client", "solution_fee"]}),
        (
            "Info",
            {
                "fields": [
                    "production_advance",
                    "negotiated_advance",
                    "final_advance",
                    "post_project_client_total_payout",
                ]
            },
        ),
        (
            "status",
            {
                "fields": [
                    "advance_status",
                    "assigned_artist_payouts",
                    "artist_payout_status",
                    "final_fee_settlement_status",
                    "project_fee_Status",
                ]
            },
        ),
    ]


class ArtistRequestAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    filter_horizontal = ("skill", "genre", "languages")
    fieldsets = [
        ("Brief", {"fields": ["skill", "location", "genre", "languages"]}),
        (
            "Details",
            {
                "fields": [
                    "other_performin_arts",
                    "budget_idea",
                    "budget_range",
                    "project",
                    "production_hiring",
                    "service_hiring",
                    "shortlisted_artists",
                    "rejected_artists",
                    "target",
                    "comments",
                    "hiring_status",
                ]
            },
        ),
    ]


class RoleAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_filter = ("role",)
    fieldsets = [
        (
            "Role",
            {
                "fields": [
                    "user",
                    "role",
                ]
            },
        )
    ]
