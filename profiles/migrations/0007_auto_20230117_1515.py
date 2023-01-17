# Generated by Django 3.2.12 on 2023-01-17 09:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0006_remove_work_skill'),
    ]

    operations = [
        migrations.AddField(
            model_name='artist',
            name='artist_intro',
            field=models.TextField(blank=True, default=''),
        ),
        migrations.AlterField(
            model_name='work',
            name='name',
            field=models.CharField(blank=True, default='', max_length=100),
        ),
    ]