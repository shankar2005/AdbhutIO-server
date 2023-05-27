from django.http import JsonResponse
import json

from django.contrib.auth import get_user_model
from django.core import serializers

from .serializers import CustomSerializer
from chat.models import Message
# Create your views here.
def chat_page(request, username):
    user_object = get_user_model().objects.defer('password').get(username=username)
    user_object_serialized = serializers.serialize(
        'json',
        [user_object],
        fields=(
            'last_login',
            'is_superuser',
            'username',
            'first_name',
            'last_name',
            'email',
            'is_staff',
            'is_active',
            'date_joined',
        ),
    )
    users = serializers.serialize(
        'json',
        get_user_model().objects.exclude(username=request.GET.get('username')),
        fields=(
            'last_login',
            'is_superuser',
            'username',
            'first_name',
            'last_name',
            'email',
            'is_staff',
            'is_active',
            'date_joined',
        ),
    )
    request_user_id = request.GET["id"]
    thread_name = (
        f'chat_{request_user_id}_{user_object.id}'
        if int(request_user_id) > int(user_object.id)
        else f'chat_{user_object.id}_{request_user_id}'
    )
    custom_serializers = CustomSerializer()
    messages = custom_serializers.serialize(
        Message.objects.select_related().filter(thread_name=thread_name),
        fields=(
            'sender__pk',
            'sender__username',
            'sender__last_name',
            'sender__first_name',
            'sender__email',
            'sender__last_login',
            'sender__is_staff',
            'sender__is_active',
            'sender__date_joined',
            'sender__is_superuser',
            'message',
            'thread_name',
            'timestamp',
        ),
    )

    context = {
        'users': users,
        'user_object': user_object_serialized,
        'messages': messages,
    }
    return JsonResponse(json.loads(json.dumps(context)), safe=False)
