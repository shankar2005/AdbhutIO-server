from models import *
from serializers import *


class WorkViewSet(viewsets.ModelViewSet):
    serializer_class = WorkSerializer

    def get_queryset(self):
        profile = Profile.objects.all().filter(user=self.request.user)
        return profile

    permission_classes = [IsAuthenticated]
