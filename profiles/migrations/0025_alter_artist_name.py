# Generated by Django 3.2.12 on 2023-01-10 18:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0024_auto_20230110_1357'),
    ]

    operations = [
        migrations.AlterField(
            model_name='artist',
            name='name',
            field=models.CharField(default='', max_length=100),
        ),
    ]