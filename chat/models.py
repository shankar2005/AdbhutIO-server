from django.db import models

# Create your models here.
from profiles.models import Client


class Message(models.Model):
    sender = models.ForeignKey(Client, on_delete=models.CASCADE, null=True, blank=True)
    message = models.TextField(null=True, blank=True)
    thread_name = models.CharField(null=True, blank=True, max_length=200)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self) -> str:
        return f'{self.sender.id}-{self.thread_name}' if self.sender else f'{self.message}-{self.thread_name}'
