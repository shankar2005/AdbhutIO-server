# Generated by Django 3.2.12 on 2023-04-25 12:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0008_alter_projectdemo_document'),
    ]

    operations = [
        migrations.AlterField(
            model_name='projectdemo',
            name='document',
            field=models.FileField(default='profile_pics\\default.jpg', max_length=255, upload_to=''),
        ),
        migrations.AlterField(
            model_name='socialprofile',
            name='name',
            field=models.CharField(max_length=100),
        ),
    ]
