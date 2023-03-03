from django.contrib import admin

from .models import *

# Register your models here.


class SkillAdmin(admin.ModelAdmin):
    filter_horizontal = ("genres",)


admin.site.register(Skill, SkillAdmin)
admin.site.register(Location)
admin.site.register(Language)
admin.site.register(Genre)
