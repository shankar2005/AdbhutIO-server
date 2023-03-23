from rest_framework.permissions import BasePermission

from .models import Role


class ArtistManagerPermisson(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        if Role.objects.get(user=user).role == "AM":
            return True
        return False


class ProductManagerPermission(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        if Role.objects.get(user=user).role == "PM":
            return True
        return False


class CustomPermissionForClientAndPM(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        if Role.objects.get(user=user).role in ["PM", "Client"]:
            return True
        return False
