from rest_framework.permissions import BasePermission
from .models import Role

class ArtistManagerPermisson(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        if Role.objects.get(user = user).role == 'Artist Manager':
            return True
        return False


class ProductManagerPermission(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        if Role.objects.get(user = user).role == 'Product Manager':
            return True
        return False
