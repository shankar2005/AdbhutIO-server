from allauth.socialaccount.providers.github.views import GitHubOAuth2Adapter
from allauth.socialaccount.providers.oauth2.client import OAuth2Client
from django.shortcuts import redirect
from rest_auth.registration.views import SocialLoginView
from rest_framework.authtoken.models import Token


def TokenLoginConfirm(request):
    if (request.method == "GET"):
        request.user.is_active = True
        request.user.profile.email_confirmed = True
        request.user.save()
        request.user.profile.save()

        token, created = Token.objects.get_or_create(user=request.user)
        redirectUrl = 'https://orangewaves.tech/auth/token/login/?{}'.format(
            token.key)
        return redirect(redirectUrl)
