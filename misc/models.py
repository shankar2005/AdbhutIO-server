from django.db import models

# Create your models here.


class Skill(models.Model):
    name = models.CharField(max_length=100, default="")
    genres = models.ManyToManyField("Genre", related_name="skills")

    def __str__(self):
        return self.name + " " + str(self.id)


class Location(models.Model):
    name = models.CharField(max_length=100, default="")

    def __str__(self):
        return self.name


class Language(models.Model):
    name = models.CharField(max_length=100, default="")

    def __str__(self):
        return self.name


class Genre(models.Model):
    name = models.CharField(max_length=100, default="")

    def __str__(self):
        return self.name + str(self.id)
