from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta
from urllib.parse import urlparse


# Serializers define the API representation.


class WorkFeedSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.owner.skill.all()]
    owner_name = serializers.SerializerMethodField()
    owner_id = serializers.SerializerMethodField()
    skills = serializers.SerializerMethodField()

    def get_owner_name(self, obj):
        return obj.owner.name

    def get_owner_id(self, obj):
        return obj.owner.pk

    class Meta:
        model = Work
        fields = [
            'weblink',
            'file',
            'demo_type',
            'owner_name',
            'owner_id',
            'details',
            'name',
            'skills',
            'pk'
        ]


# update the artist
class ArtistProfileSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.skill.all()]

    def get_social(self, obj):
        q = {}
        links = obj.social_links.split(",")

        for social in links:
            social = social.replace(" ", "")
            domain = urlparse(social).netloc

            domain = domain.split(".")

            if "facebook" in domain:
                q["facebook"] = social
            elif "instagram" in domain:
                q["instagram"] = social

            elif "twitter" in domain:
                q["twitter"] = social
            elif "youtube" in domain:
                q["youtube"] = social
            elif "linkedin" in domain:
                q["linkedin"] = social
            elif "spotify" in domain:
                q["spotify"] = social
            elif "soundcloud" in domain:
                q["soundcloud"] = social
            elif "tiktok" in domain:
                q["tiktok"] = social
            elif "twitch" in domain:
                q["twitch"] = social

        return q

    def get_manager(self, obj):
        if obj.has_manager and obj.manager:
            return {'name': obj.manager.name, 'email': obj.manager.email, 'phone': obj.manager.phone}
        else:
            return []

    def get_language(self, obj):
        return [language.name for language in obj.languages.all()]

    def get_artistID(self, obj):
        return obj.pk

    def get_workLinks(self, obj):
        return [[work.weblink, work.demo_type, work.id] for work in obj.works_links.all()]
    
    def get_location_name(self,obj):
        if obj.location is not None:
            return obj.location.name
        return None

    skills = serializers.SerializerMethodField()
    social = serializers.SerializerMethodField()
    manager = serializers.SerializerMethodField()
    artistID = serializers.SerializerMethodField()
    language = serializers.SerializerMethodField()
    workLinks = serializers.SerializerMethodField()
    location_name = serializers.SerializerMethodField()

    class Meta:
        model = Artist
        fields = [
            'name',
            'email',
            'profile_pic',
            'phone',
            'skills',
            'budget_range',
            'social',
            'has_manager',
            "manager",
            "artistID",
            "location",
            "location_name",
            "language",
            "workLinks"
        ]


class ProjectSerializerMini(serializers.ModelSerializer):

    template = serializers.SerializerMethodField()
    name = serializers.SerializerMethodField()

    def get_template(self, obj):
        return [obj.project_template.id,  obj.project_template.name]

    def get_name(self, obj):
        return obj.project_template.name + " - " + obj.stage + "-" + str(obj.id)

    class Meta:
        model = Project
        fields = [
            'stage',
            'template',
            'name',
            'pk'
        ]


class ProjectSerializer(serializers.ModelSerializer):
    template = serializers.SerializerMethodField()

    def get_template(self, obj):
        return [obj.project_template.id,  obj.project_template.name]

    class Meta:
        model = Project
        fields = [
            'stage',
            'brief',
            'template',
            'shortlisted_artists',
            'pk'
        ]


class TemplateProjectsSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.skills.all()]
    skills = serializers.SerializerMethodField()

    class Meta:
        model = TemplateProjects
        fields = [
            'name',
            'details',
            'skills',
            'pk'
        ]
