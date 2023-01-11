from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta


# Serializers define the API representation.
class WorkFeedSerializer(serializers.ModelSerializer):

    class Meta:
        model = Work
        fields = [
            

        ]
