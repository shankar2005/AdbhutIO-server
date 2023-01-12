from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta


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
