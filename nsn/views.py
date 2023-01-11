
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import permissions, status
from profiles.models import *
from rest_framework.authtoken.models import Token
# Register user rest api view


class ValidateToken(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):

        data = request.data

        token = data['token']

        if Token.objects.filter(key=token).exists():
            return Response({
                'status': 'success',
                'msg': 'Token is valid',
            },
                status=status.HTTP_200_OK)
        else:
            return Response({
                'status': 'failed',
                'msg': 'Token is invalid',
            },
                status=status.HTTP_400_BAD_REQUEST)
