from django.contrib.auth import authenticate, login
from django.db import IntegrityError
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseRedirect
from phonenumber_field.phonenumber import PhoneNumber
from rest_framework import exceptions, permissions, status
from rest_framework.authtoken.models import Token
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from .utils import send_email_token
import uuid
from profiles.models import *
from profiles.serializers import ClientSerializer

from .tokens import account_activation_token


class EmailLogin(ObtainAuthToken):
    @csrf_exempt
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        email = request.data.get("email")
        password = request.data.get("password")

        print(f"eddamail => {email}\tpassword=>{password}")

        if email is None or password is None:
            raise exceptions.AuthenticationFailed("Email and password required")

        if email and password:
            user = authenticate(request=request, email=email, password=password)
            print("passed 2")

            if user is not None:
                login(
                    request, user, backend="django.contrib.auth.backends.ModelBackend"
                )
                try:
                    token = Token.objects.get(user=user)
                except Exception as e:
                    return Response({"Please Verify the account with the registered email"})
                return Response({"token": token.key})

        return Response({"error": "Invalid email/password"}, status=400)


class RegisterUserView(APIView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        try:
            print("passed 0")
            data = request.data
            if data["role"] == "Artist":
                print("here")
                name = data["name"]
                email = data["email"]
                password = data["password"]
                password2 = data["password2"]
                phone = data["phone"]
                username = email
            else:
                name = data["name"] if data["name"] != None else ""
                email = data["email"]
                password = data["password"]
                password2 = data["password2"]
                phone = data["phone"] if data["phone"] != None else ""
                company = data["company"] if data["company"] != None else ""
                company_url = data["url"] if data["url"] != None else ""
                username = email

            print("passed")

            if User.objects.filter(email=email).exists():
                return Response(
                    {"error": "Email already exists"},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            if password != password2:
                return Response(
                    {"error": "Passwords do not match"},
                    status=status.HTTP_400_BAD_REQUEST,
                )

            if len(password) >= 8:
                print("passed 1")
                try:
                    user = User.objects.create_user(
                        first_name=name,
                        username=username,
                        password=password,
                        email=email,
                    )
                    token = str(uuid.uuid4())
                    print("passed 2")
                    if data['role'] == 'Artist':
                        phone = '"{}"'.format(phone)
                        artist = Artist(user=user, email=email, name=name,phone=PhoneNumber.from_string(str(phone)),email_token=token)
                        artist.save()
                    else:
                        client = Client(user=user, email=email, name=name,email_token=token)
                        phone = '"{}"'.format(phone)
                        client.phone = PhoneNumber.from_string(str(phone))
                        print(f"client phone {client.phone}")
                        client.company = company
                        client.save()

                    role = Role(user=user, role=data['role'])
                    role.save()
                    print("passed 3")

                except Exception as e:
                    # handle the case where a user with the same email already exists
                    print("Error creating user: ", e)

                send_email_token(email,token)
                return Response(
                    {"message": "User created successfully"},
                    status=status.HTTP_201_CREATED,
                )
            else:
                return Response(
                    {"error": "Password must be at least 8 characters"},
                    status=status.HTTP_400_BAD_REQUEST,
                )
        except Exception as e:
            print(e)
            if str(e) == "User has no client.":
                send_email_token(email,token)
                return Response(
                    {"success": "User is created successfully"},
                    status=status.HTTP_200_OK,
                )
            return Response(
                {"error": "Something went wrong", "error_message": str(e)},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )

class VerifyEmail(APIView):
    def get_user_from_token(self, token):
        user = None

        try:
            user = Client.objects.get(email_token=token)
        except Client.DoesNotExist:
            try:
                user = Artist.objects.get(email_token=token)
            except Artist.DoesNotExist:
                pass
        return user
    def get(self, request, token):
        user = self.get_user_from_token(token)
        if user:
            user.email_token=""
            email = user.email
            user.save()
            token_user = User.objects.get(email=email)
            t , _= Token.objects.get_or_create(user=token_user)
            return HttpResponseRedirect('https://adbhut.io/')



class ValidateToken(APIView):
    """verify token

    Args:
        APIView (POST): Validate user by token

    Returns:
        User: User details along with message
    """

    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        data = request.data
        token = data["token"]

        # print("passed1")
        if Token.objects.filter(key=token).exists():
            # print("passed2")

            token = get_object_or_404(Token, key=token)
            # print("passed3")

            user = User.objects.get(email=token.user.email)
            try:
                role = Role.objects.get(user=user)  # get_object_or_404(Role, user=user)
            except:
                role = None

            id = -1
            if role:
                if role.role =='PM' or role.role == 'AM':
                    id = user.id
                else:
                    try:
                        id = Artist.objects.get(user=user).id
                    except Exception as e:
                        id = Client.objects.get(user=user).id

            response = {
                "name": user.first_name + " " + user.last_name,
                "email": user.email,
                "id":id
            }

            # print(f"role => {role.role if role else ''}")
            # backend_url = "https://dev.nsnco.in"
            if role:
                if role.role == "Client":
                    client = Client.objects.get(user=user)
                    response["role"] = "Client"
                    response["phone"] = str(client.phone,)
                    response["company"] = (client.company,)
                    response["image"] = f"{client.image.url}"
                elif role.role == "PM":
                    response["role"] = "PM"
                elif role.role == "AM":
                    response["role"] = "AM"
                elif role.role == "Artist":
                    artist = Artist.objects.get(user=user)
                    response["role"] = "Artist"
                    response["phone"] = str(artist.phone,)
                    response["image"] = f"{artist.profile_pic.url}"
                else:
                    response["role"] = "Unknown"

            return Response(
                {
                    "user": response,
                    "status": "success",
                    "msg": "Token is valid",
                },
                status=status.HTTP_200_OK,
            )
        else:
            return Response(
                {
                    "status": "failed",
                    "msg": "Token is invalid",
                },
                status=status.HTTP_400_BAD_REQUEST,
            )


class UserDetailsView(APIView):
    permission_classes = (IsAuthenticated,)

    def get(self, request, *args, **kwargs):
        try:
            role = get_object_or_404(Role, user=request.user)
            if role.role == "Client":
                client = get_object_or_404(Client, user=request.user)
                client_serializer = ClientSerializer(instance=client, many=False)
                return Response(
                    {"user": client_serializer.data, "role": role.role},
                    status=status.HTTP_200_OK,
                )
            elif role.role == "AM":
                user = {
                    "name": request.user.first_name + " " + request.user.last_name,
                    "email": request.user.email,
                }
                return Response(
                    {"user": user, "role": role.role}, status=status.HTTP_200_OK
                )
            elif role.role == "PM":
                user = {
                    "name": request.user.first_name + " " + request.user.last_name,
                    "email": request.user.email,
                }
                return Response(
                    {"user": user, "role": role.role}, status=status.HTTP_200_OK
                )
            elif role.role == "Artist":
                user = {
                    "name": request.user.first_name + " " + request.user.last_name,
                    "email":request.user.email,
                }
                return Response(
                    {"user": user, "role": role.role}, status=status.HTTP_200_OK
                )
        except Exception as e:
            return Response(
                {"message": "something went wrong"}, status=status.HTTP_400_BAD_REQUEST
            )
