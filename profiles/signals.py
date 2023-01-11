
import PIL.Image as Image
import numpy as np
import io
import json
import requests
import base64
from email.mime import base
from django.db.models.signals import post_save
from django.contrib.auth.models import User

from django.dispatch import receiver
from .models import Client
from django.core.files.storage import get_storage_class
default_storage = get_storage_class()()


@receiver(post_save, sender=User)
def post_save_create_client(sender, instance, created, **kwargs):
    print("kjsdfkdfj")
    if created:
        Client.objects.create(
            user=instance,
            name=instance.username,
            email=instance.email,
        )
