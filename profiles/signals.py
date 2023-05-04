import base64
import io
import json
import random
import string
from email.mime import base

import numpy as np
import PIL.Image as Image
import requests
from django.contrib.auth.models import User
from django.core.files.storage import get_storage_class
from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from django.shortcuts import get_object_or_404
from django.template.defaultfilters import slugify
from rest_framework.authtoken.models import Token
from .models import Client, Project, Role

default_storage = get_storage_class()()


# @receiver(post_save, sender=User)
# def post_save_create_client(sender, instance, created, **kwargs):
#     if created:
#         if not Token.objects.filter(user=instance).exists():
#             Token.objects.create(user=instance)

#         if instance.username[:2] == "AM":
#             Role.objects.create(user=instance, role="AM")
#         elif instance.username[:2] == "PM":
#             Role.objects.create(user=instance, role="PM")
#         else:
#             Role.objects.create(user=instance, role="Client")
#             Client.objects.create(
#                 user=instance,
#                 name=instance.username,
#                 email=instance.email,
#             )


def random_string(count=10):
    randomString = "".join(random.choices(string.ascii_letters, k=count))
    return randomString


@receiver(pre_save, sender=Project)
def pre_save_update_project(sender, instance, **kwargs):
    if instance.id is None:
        instance.slug = slugify("nsn-project " + random_string())


@receiver(post_save, sender=Project)
def post_save_update_project(sender, instance, created, **kwargs):
    if created:
        if instance.title is None:
            instance.title = (
                str(instance.project_template.name)
                if instance.project_template
                else "" + " - " + instance.stage + " - " + str(instance.id)
            )
            instance.save()
