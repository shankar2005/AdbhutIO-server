# Generated by Django 3.2.12 on 2023-06-18 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0028_alter_projectdemo_project'),
    ]

    operations = [
        migrations.AddField(
            model_name='projectdemo',
            name='assigned_artists',
            field=models.ManyToManyField(blank=True, default='', to='profiles.Artist'),
        ),
        migrations.AlterField(
            model_name='role',
            name='role',
            field=models.CharField(choices=[('Client', 'Client'), ('AM', 'Artist Manager'), ('PM', 'Production Manager'), ('Artist', 'Artist')], default='Client', max_length=100),
        ),
    ]