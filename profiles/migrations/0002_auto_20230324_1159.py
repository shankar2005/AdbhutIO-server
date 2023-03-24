# Generated by Django 3.2.12 on 2023-03-24 06:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='templateprojects',
            options={'verbose_name': 'Content Product', 'verbose_name_plural': 'Content Products'},
        ),
        migrations.AlterModelOptions(
            name='templateprojectskill',
            options={'verbose_name': 'Product-Skill', 'verbose_name_plural': 'Products-Skills'},
        ),
        migrations.AlterField(
            model_name='role',
            name='role',
            field=models.CharField(choices=[('Client', 'Client'), ('AM', 'Artist Manager'), ('PM', 'Production Manager')], default='Client', max_length=100),
        ),
        migrations.CreateModel(
            name='ChatBot',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.CharField(choices=[('ON', 'ON'), ('OFF', 'OFF')], max_length=5)),
                ('project', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='profiles.project')),
            ],
        ),
    ]
