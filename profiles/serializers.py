from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta
from urllib.parse import urlparse


# Serializers define the API representation.


class WorkFeedSerializer(serializers.ModelSerializer):

    owner_name = serializers.SerializerMethodField()
    owner_id = serializers.SerializerMethodField()

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
            'name'


        ]


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

    def get_artistID(self, obj):
        return obj.pk

    skills = serializers.SerializerMethodField()
    social = serializers.SerializerMethodField()
    manager = serializers.SerializerMethodField()
    artistID = serializers.SerializerMethodField()

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
            "artistID"
        ]
