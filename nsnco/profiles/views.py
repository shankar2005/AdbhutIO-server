from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from django.shortcuts import render
from .models import *
from .choices import *
from django.shortcuts import redirect

# Create your views here.


def index(request):

    context = {
        'User': request.user,
        'Artists': Artist.objects.all(),
    }

    return render(request, 'main/index.html', context=context)


def artist(request, artist_id):
    context = {
        'User': request.user,
        'Artist': Artist.objects.get(id=artist_id),
        'skills': SKILLS,
        'locations': LOCATION,
        'languages': LANGUAGE,
    }
    if request.method == "POST":
        print(request.POST)
        print(request.FILES)
        artist = Artist.objects.get(id=artist_id)
        artist.name = request.POST['name']
        artist.email = request.POST['email']

        if request.FILES:
            artist.profilePic = request.FILES['profilePic']

        #artist.profilePic = request.POST['profilePic']
        artist.skill = request.POST['skill']
        artist.location = request.POST['location']
        artist.profesionalRating = request.POST['profesionalRating']
        artist.attitudeRating = request.POST['attitudeRating']

        try:
            artist.languages = request.POST['languages']
        except:
            pass

        try:
            artist.age = request.POST['age']
        except:
            pass

        artist.save()
        context = {
            'User': request.user,
            'Artist': artist,
            'skills': SKILLS,
            'locations': LOCATION,
            'languages': LANGUAGE,
        }

        return render(request, 'main/artist.html',
                      context=context)
    if request.method == 'GET':
        return render(request, 'main/artist.html', context=context)


def artistUpdate(request, artist_id):

    context = {
        'User': request.user,
        'Artist': Artist.objects.get(id=artist_id),
        'skills': SKILLS,
        'locations': LOCATION,
        'languages': LANGUAGE,
    }

    return render(request, 'main/artistUpdate.html', context=context)


def addArtist(request):
    if request.method == "POST":
        print(request.POST)
        print(request.FILES)
        artist = Artist.objects.create()
        artist.name = request.POST['name']
        artist.email = request.POST['email']
        artist.profilePic = request.FILES['profilePic']
        artist.skill = request.POST['skill']
        artist.location = request.POST['location']
        artist.profesionalRating = request.POST['profesionalRating']
        artist.attitudeRating = request.POST['attitudeRating']

        try:
            artist.languages = request.POST['languages']
        except:
            pass

        try:
            artist.age = request.POST['age']
        except:
            pass

        artist.save()
        context = {
            'User': request.user,
            'Artist': artist,
            'skills': SKILLS,
            'locations': LOCATION,
            'languages': LANGUAGE,
        }

        return render(request, 'main/artist.html',
                      context=context)
    context = {
        'User': request.user,
        'Artist': None,
        'skills': SKILLS,
        'locations': LOCATION,
        'languages': LANGUAGE,
    }
    return render(request, 'main/artist.html', context=context)


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
