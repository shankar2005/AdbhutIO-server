# load data to django from a csv

import csv

from django.core.management.base import BaseCommand

from misc.models import *
from profiles.models import Artist, Work


def run():
    with open("scripts/data.csv") as file:
        reader = csv.reader(file)
        next(reader)
        Artist.objects.all().delete()
        Work.objects.all().delete()
        Location.objects.all().delete()
        Skill.objects.all().delete()
        Genre.objects.all().delete()

        for row in reader:
            skill = row[0].split(",")
            genre = row[1].split(",")
            language = row[2].split(",")
            location = row[3]
            name = row[6]
            # profile = row[7]
            bestWork = row[8]
            work2 = row[9]
            work3 = row[10]
            intro = row[12]
            number = 0 if row[15] == "" else row[15]
            email = row[16]
            budget_idea = row[23]
            am_note = row[24]
            pm_note = row[25]

            print(name)

            professional_rating = 0 if row[26] == "" else row[26]
            attitude_rating = 0 if row[27] == "" else row[27]

            artist = Artist.objects.create(
                name=name,
                artist_intro=intro,
                phone=number,
                email=email,
                budget_idea=budget_idea,
                am_notes=am_note,
                pm_notes=pm_note,
                professional_rating=professional_rating,
                attitude_rating=attitude_rating,
            )

            for s in skill:
                if Skill.objects.filter(name=s).count() > 1:
                    artist.skill.add(Skill.objects.filter(name=s)[0].id)
                else:
                    skilll = Skill.objects.get_or_create(name=s)
                    artist.skill.add(skilll[0].id)
            for g in genre:
                if Genre.objects.filter(name=g).count() > 1:
                    artist.genre.add(Genre.objects.filter(name=g)[0].id)
                else:
                    artist.genre.add(Genre.objects.get_or_create(name=g)[0].id)
            for l in language:
                if Language.objects.filter(name=l).count() > 1:
                    artist.languages.add(Language.objects.filter(name=l)[0].id)
                else:
                    artist.languages.add(Language.objects.get_or_create(name=l)[0].id)

            location = Location.objects.get_or_create(name=location)[0]
            artist.location = location

            bestWork = Work.objects.create(
                owner=artist, weblink=bestWork, show_in_top_feed=True
            )
            work2 = Work.objects.create(owner=artist, weblink=work2)
            work3 = Work.objects.create(owner=artist, weblink=work3)

            artist.works_links.add(bestWork.pk)
            artist.works_links.add(work2.pk)
            artist.works_links.add(work3.pk)

            artist.save()
