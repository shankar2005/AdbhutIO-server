from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta
from urllib.parse import urlparse


# Serializers define the API representation.

class SkillSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skill
        fields = [
            'name',
            'pk'
        ]
