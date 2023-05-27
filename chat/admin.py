from django.contrib import admin

from chat.models import Message


@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display: list[str] = ['id', 'thread_name', 'get_id', 'message', 'timestamp']
    list_per_page: int = 20

    def get_id(self, obj):
        return obj.sender.id if obj.sender else ''
