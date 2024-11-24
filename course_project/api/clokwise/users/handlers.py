from django.db.models.signals import post_save
from django.dispatch import receiver

from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync

from users.models import Notification
from users.serializers.get_serializers import NotificationSerializer


@receiver(post_save, sender=Notification)
def send_ws_notification(sender, instance, created, **kwargs):
    if not created:
        return
    
    print(f"new notification for {instance.receiver.id}")
    group_name = f"notifications_user_{instance.receiver.id}"
    serialized_notification = NotificationSerializer(instance=instance).data
    layer = get_channel_layer()

    async_to_sync(layer.group_send)(
        group_name,
        message={
            "type": "new_message",
            "data": {
                "type": "new_notification",
                "data": serialized_notification,
            },
        },
    )