# Generated by Django 3.2.12 on 2023-01-16 11:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0005_templateprojects'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='work',
            name='skill',
        ),
    ]
