from django.db import models
from .choices import *
#from django.contrib.postgres.fields import ArrayField

# Create your models here.


class Work(models.Model):
    name = models.CharField(max_length=100, default='')
    link = models.URLField(max_length=100, default='')
    owner = models.ForeignKey('Artist', on_delete=models.CASCADE, default='')

    def __str__(self):
        return self.name


class Manager (models.Model):
    name = models.CharField(max_length=100, default='', blank=True)
    phone = models.IntegerField(default=0)
    email = models.EmailField(max_length=100, default='', blank=True)

    def __str__(self):
        return self.name


class Artist(models.Model):
    name = models.CharField(max_length=100, default='', blank=True)
    skill = models.CharField(
        choices=SKILLS, max_length=100, default='', blank=True)
    profilePic = models.ImageField(
        upload_to='artist_pics', default='', blank=True)
    location = models.CharField(
        max_length=100, default='', choices=LOCATION, blank=True)
    languages = models.TextField(default='', blank=True)

    # Conditional only on  skill = 'Actor'
    age = models.IntegerField(default=0)
    genre = models.CharField(max_length=100, default='', blank=True)
    email = models.EmailField(max_length=100, default='', blank=True)
    other_arts = models.CharField(max_length=100, default='', blank=True)
    worksLink = models.ManyToManyField(Work, default='', blank=True)
    socialLinks = models.TextField(default='', blank=True)
    phone = models.IntegerField(default=0, blank=True)

    hasManager = models.BooleanField(default=False, blank=True)
    manager = models.ForeignKey(
        Manager, on_delete=models.CASCADE, default='', blank=True)
    budgetRange = models.CharField(max_length=100, default='', blank=True)
    budgetIdea = models.CharField(max_length=100, default='', blank=True)
    amNotes = models.TextField(default='', blank=True)
    pmNotes = models.TextField(default='', blank=True)
    profesionalRating = models.IntegerField(default=0, blank=True)  # 1-10
    attitudeRating = models.IntegerField(default=0, blank=True)  # 1 - 10
    agreement = models.URLField(max_length=100, default='', blank=True)

    def __str__(self):
        return self.name
