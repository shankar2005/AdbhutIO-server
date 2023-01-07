import json
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from django.shortcuts import render
from .models import *
from .choices import *
from django.shortcuts import redirect
import requests

from django.core.files import File


# Create your views here.


def index(request):

    context = {
        'User': request.user,
        'Artists': Artist.objects.all(),
    }

    return render(request, 'main/index.html', context=context)


def artist(request, artist_id):
    artist = Artist.objects.get(id=artist_id)

    context = {
        'User': request.user,
        'Artist':  artist,
        'skills': SKILLS,
        'locations': LOCATION,
        'languages': LANGUAGE,
        'genres': GENRES,
        'Manager': artist.manager,
        'Social': artist.socialLinks.split(','),
        'Works': artist.worksLink.all(),
    }

    if request.method == "POST":

        artist.name = request.POST['name']
        artist.email = request.POST['email']

        if request.FILES:
            artist.profilePic = request.FILES['profilePic']
        if request.POST['profilePicUrl']:
            # get profile pic from url
            url = request.POST['profilePicUrl']
            r = requests.get(url, allow_redirects=True)
            q = open('test.png', 'wb').write(r.content)

            artist.profilePic = File(open('test.png', 'rb'))

            # artist.profilePic = request.POST['profilePic']
        artist.skill = request.POST['skill']
        artist.location = request.POST['location']
        artist.profesionalRating = request.POST['profesionalRating']
        artist.attitudeRating = request.POST['attitudeRating']
        artist.otherArts = request.POST['otherPerformingArts']

        artist.languages = request.POST.getlist('languages')
        artist.genre = request.POST.getlist('genre')
        artist.budgetIdea = request.POST['budgetIdea']

        artist.pmNotes = request.POST['PMNotes']
        artist.amNotes = request.POST['AMNotes']

        artist.agreement = request.POST['agreement']
        artist.budgetRange = request.POST['budgetRange']

        try:
            artist.hasManager = True if request.POST['manager'] == 'on' else False

            if artist.hasManager:
                if artist.manager is not None:
                    artist.manager.name = request.POST['managerName']
                    artist.manager.email = request.POST['managerEmail']
                    artist.manager.phone = request.POST['managerPhone']
                    artist.manager.save()
                else:
                    artist.manager = Manager.objects.create(
                        name=request.POST['managerName'],
                        email=request.POST['managerEmail'],
                        phone=request.POST['managerPhone'],
                    )
                    artist.manager.save()

        except:
            artist.hasManager = False
            artist.manager.delete()
            artist.manager = None

        try:
            artist.age = request.POST['age']
        except:
            pass  # pass

        artist.save()

        context = {
            'User': request.user,
            'Artist': artist,
            'skills': SKILLS,
            'locations': LOCATION,
            'languages': LANGUAGE,
            'genres': GENRES,
            'Manager': artist.manager,
            'Social': artist.socialLinks.split(','),

        }
        print(artist.manager)

        return render(request, 'main/artist.html',
                      context=context)
    if request.method == 'GET':
        return render(request, 'main/artist.html', context=context)


def addArtist(request):
    if request.method == "POST":

        artist = Artist.objects.create()
        artist.name = request.POST['name']
        artist.email = request.POST['email']

        artist.skill = request.POST['skill']
        artist.location = request.POST['location']
        artist.profesionalRating = request.POST['profesionalRating']
        artist.attitudeRating = request.POST['attitudeRating']
        artist.otherArts = request.POST['otherPerformingArts']

        artist.languages = request.POST.getlist('languages')
        artist.genre = request.POST.getlist('genre')
        artist.budgetIdea = request.POST['budgetIdea']

        artist.pmNotes = request.POST['PMNotes']
        artist.amNotes = request.POST['AMNotes']

        artist.agreement = request.POST['agreement']
        artist.budgetRange = request.POST['budgetRange']

        try:
            artist.hasManager = True if request.POST['manager'] == 'on' else False
        except:
            artist.hasManager = False

        if artist.hasManager:
            try:
                artist.manager = Manager.objects.create(
                    name=request.POST['managerName'],
                    email=request.POST['managerEmail'],
                    phone=request.POST['managerPhone'],
                )
                artist.manager.save()
            except:
                artist.hasManager = False

        try:
            artist.languages = request.POST['languages']
        except:
            pass

        try:
            if request.FILES:
                artist.profilePic = request.FILES['profilePic']
            if request.POST['profilePicUrl'] != "" or request.POST['profilePicUrl'] != None:
                # get profile pic from url
                url = request.POST['profilePicUrl']
                r = requests.get(url, allow_redirects=True)
                q = open('test.png', 'wb').write(r.content)

                artist.profilePic = File(open('test.png', 'rb'))
        except:
            pass

        try:
            artist.age = request.POST['age']
        except:
            pass

        artist.save()

        return redirect('profiles:index')
    context = {
        'User': request.user,
        'Artist': None,
        'skills': SKILLS,
        'locations': LOCATION,
        'languages': LANGUAGE,
        'genres': GENRES,
        'Manager': None,
        'Social': [],

    }
    return render(request, 'main/artist.html', context=context)


def deleteArtist(request, artist_id):
    if request.method == "POST":
        artist = Artist.objects.get(id=artist_id)
        artist.delete()
    return redirect('profiles:index')


def logout(request):
    request.session.flush()
    return render(request, 'main/index.html')


def loginUser(request):
    if request.method == "POST":
        print(request.POST)
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('profiles:index')
        else:
            print("User does not exist")
            return render(request, 'main/index.html')
    redirect('profiles:index')
