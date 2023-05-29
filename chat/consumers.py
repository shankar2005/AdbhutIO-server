import json
from urllib.parse import parse_qs
from channels.db import database_sync_to_async
from channels.generic.websocket import AsyncWebsocketConsumer
from django.contrib.auth.models import AnonymousUser
from .serializers import CustomSerializer
from chat.models import Message
from channels.exceptions import DenyConnection
from profiles.models import *

class ChatConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await self.get_token(self.scope)
        user = self.scope['user']
        if isinstance(user, AnonymousUser):
            raise DenyConnection("Unauthorized")
        other_user_id = self.scope['url_route']['kwargs']['id']
        # Get current user id to dynamically manage security of creating private rooms
        self.current_user_id = user.id # Store current user id for reference
        project_id = self.scope['url_route']['kwargs']['project_id'] # Get the project id to create a room for this project
        self.client = await self.get_user(self.current_user_id) # Store the client for reference
        project_status = await self.check_project_existance(project_id,self.client) # Get the project based on the client and project id given
        role = await self.get_user_role(user)
        if role != 'PM' and project_status is None:
            # Check validity of creating rooms based on project of the client
            raise DenyConnection("Project does not exist")
        self.room_name = ( #Create the room for the specific project
            f'{self.current_user_id}_{other_user_id}_{project_id}'
            if int(self.current_user_id) > int(other_user_id)
            else f'{other_user_id}_{self.current_user_id}_{project_id}'
        )
        self.room_group_name = f'chat_{self.room_name}'
        await self.channel_layer.group_add(self.room_group_name, self.channel_name)
        await self.accept()
        await self.send_previous_messages()
        # await self.send(text_data=json.dumps({'message': self.room_group_name}))

    async def disconnect(self, close_code):
        try:
            await self.channel_layer.group_discard(self.room_group_name, self.channel_layer)
            await self.disconnect(close_code)
        except:
            pass


    async def receive(self, text_data=None, bytes_data=None):
        data = json.loads(text_data)
        message = data['message']
        await self.save_message(sender=self.client, message=message, thread_name=self.room_group_name)

        messages = await self.get_messages()

        await self.channel_layer.group_send(
            self.room_group_name,
            {
                'type': 'chat_message',
                'message': message,
                'user_id': self.current_user_id,
                'messages': messages,
            },
        )

    async def create_clean_messages(self, message_list):
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
        return clean_messages

    async def chat_message(self, event):
        user_id = event['user_id']
        messages = event['messages']
        # Parse the JSON string into a Python list of dictionaries
        message_list = json.loads(messages)
        clean_messages = await self.create_clean_messages(message_list)

        await self.send(
            text_data=json.dumps(
                {
                    'user_id': user_id,
                    'messages': clean_messages,
                }
            )
        )

    async def send_previous_messages(self):
        messages = await self.get_messages()

        # Parse the JSON string into a Python list of dictionaries
        message_list = json.loads(messages)
        clean_messages = await self.create_clean_messages(message_list)

        await self.send(
            text_data=json.dumps(
                {
                    'user_id': self.current_user_id,
                    'messages': clean_messages,
                }
            )
        )



    async def get_token(self,scope):
        query_string = scope["query_string"]
        query_params = query_string.decode()
        query_dict = parse_qs(query_params)
        token = query_dict["token"][0]
        user = await self.returnUser(token)
        scope["user"] = user

    @database_sync_to_async
    def returnUser(self, token_string):
        try:
            user = User.objects.get(auth_token=token_string)
        except:
            user = AnonymousUser()
        return user

    @database_sync_to_async
    def check_project_existance(self, project_id,client):
        try: # If the project exists with the client being the owner then return the project
            return Project.objects.get(id=project_id, client=client)
        except Project.DoesNotExist: # Else return None to close the connection
            return None

    @database_sync_to_async
    def get_user_role(self,user):
        return Role.objects.get(user=user).role


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
