from dataclasses import field
from datetime import datetime, timedelta
from urllib.parse import urlparse

from rest_framework import serializers

from .models import *

# Serializers define the API representation.


class SkillSerializer(serializers.ModelSerializer):
    genre = serializers.SerializerMethodField()

    def get_genre(self, obj):
        return [[genre.name, genre.pk] for genre in obj.genres.all()]

    class Meta:
        model = Skill
        fields = ["name", "genre", "pk"]


class LocationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Location
        fields = ["name", "pk"]


class GenreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Genre
        fields = ["name", "pk"]


class LanguageSerializers(serializers.ModelSerializer):
    class Meta:
        model = Language
        fields = ["pk", "name"]
