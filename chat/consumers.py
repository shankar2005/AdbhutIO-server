
import json

from channels.db import database_sync_to_async
from channels.generic.websocket import AsyncWebsocketConsumer
from django.contrib.auth.models import AnonymousUser
from django.core.exceptions import ObjectDoesNotExist
from .serializers import CustomSerializer
from chat.models import Message
from channels.exceptions import DenyConnection
from profiles.models import *

class ChatConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        # user = self.scope['user']
        # if isinstance(user, AnonymousUser):
        #     # Find auth token in headers
        #     user = await self.get_user_from_headers()
        # if user is None:
        #     # Handle anonymous user or unauthorized access
        #     raise DenyConnection("Unauthorized")
        other_user_id = self.scope['url_route']['kwargs']['id']
        # Get current user id to dynamically manage security of creating private rooms

        # current_user_id = user.id
        print(self.scope['user'])
        current_user_id = 48
        project_id = self.scope['url_route']['kwargs']['project_id']
        project_status = await self.check_project_existance(project_id)
        if project_status is None:
            # Check validity of creating rooms based on project
            raise DenyConnection("Project does not exist")
        self.room_name = (
            f'{current_user_id}_{other_user_id}_{project_id}'
            if int(current_user_id) > int(other_user_id)
            else f'{other_user_id}_{current_user_id}_{project_id}'
        )
        self.room_group_name = f'chat_{self.room_name}'
        await self.channel_layer.group_add(self.room_group_name, self.channel_name)
        await self.accept()
        await self.send(text_data=json.dumps({'message': self.room_group_name}))

    async def disconnect(self, close_code):
        try:
            await self.channel_layer.group_discard(self.room_group_name, self.channel_layer)
            await self.disconnect(close_code)
        except:
            pass


    async def receive(self, text_data=None, bytes_data=None):
        data = json.loads(text_data)
        message = data['message']
        user_id = data['user_id'].replace('"', '')
        sender = await self.get_user(user_id.replace('"', ''))

        await self.save_message(sender=sender, message=message, thread_name=self.room_group_name)

        messages = await self.get_messages()

        await self.channel_layer.group_send(
            self.room_group_name,
            {
                'type': 'chat_message',
                'message': message,
                'user_id': user_id,
                'messages': messages,
            },
        )

    async def chat_message(self, event):
        user_id = event['user_id']
        messages = event['messages']
        # Parse the JSON string into a Python list of dictionaries
        message_list = json.loads(messages)

        # Create a new list with cleaner message data
        clean_messages = []
        for msg in message_list:
            clean_msg = {
                'message': msg['fields']['message'],
                'thread_name': msg['fields']['thread_name'],
                'timestamp': msg['fields']['timestamp'],
                'client_id': msg['fields']['sender__pk'],
                'sender_email': msg['fields']['sender__email']
            }
            clean_messages.append(clean_msg)

        await self.send(
            text_data=json.dumps(
                {
                    'user_id': user_id,
                    'message': clean_messages,
                }
            )
        )

    @database_sync_to_async
    def get_user_from_headers(self):
        try:
            for key, value in self.scope["headers"]:
                if key.decode("utf-8").lower() == "authorization":
                    _, token = value.decode("utf-8").split(" ")
                    user = User.objects.get(auth_token=token)
                    return user
        except (AttributeError, ObjectDoesNotExist):
            return None

    @database_sync_to_async
    def check_project_existance(self, project_id):
        try:
            return Project.objects.get(id=project_id)
        except Project.DoesNotExist:
            return None


    @database_sync_to_async
    def get_user(self, user_id):
        client = User.objects.get(id=user_id)
        return Client.objects.get(user=client)

    @database_sync_to_async
    def get_messages(self):
        custom_serializers = CustomSerializer()
        messages = custom_serializers.serialize(
            Message.objects.select_related().filter(thread_name=self.room_group_name),
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
        return messages

    @database_sync_to_async
    def save_message(self, sender, message, thread_name):
        Message.objects.create(sender=sender, message=message, thread_name=thread_name)
