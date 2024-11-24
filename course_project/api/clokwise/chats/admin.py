from django.contrib import admin

from chats.models import Attachment, Chat, Message, MessageReadTime

admin.site.register(Chat)
admin.site.register(Message)
admin.site.register(MessageReadTime)
admin.site.register(Attachment)
