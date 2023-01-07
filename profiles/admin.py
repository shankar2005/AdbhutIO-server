from django.contrib import admin
from .models import *
# Register your models here.


class ArtistAdmin(admin.ModelAdmin):

    fieldsets = [
        ("Contact", {'fields': [
            ("name", "age"),
            ("email", "phone"),
            ("skill", "genre"),
            ("location", "languages"),
            "profilePic"
        ]}),
        ("Work", {
            "fields": [
                "worksLink",
                "socialLinks",
                ("hasManager",
                 "manager")
            ]}),
        ("Contract", {"fields": [
            ("profesionalRating", "attitudeRating"),
         ("budgetRange", "budgetIdea"
          ),
         ("amNotes",
                "pmNotes",),
         ]})
    ]


admin.site.register(Artist, ArtistAdmin)
admin.site.register(Manager)
admin.site.register(Work)
