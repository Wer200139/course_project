from loguru import logger
from celery import shared_task
from django.utils import timezone

from users.models import ExpertSearchRequest, Notification
from django.utils.translation import gettext as _

@shared_task(name="expired_general_requests_remover")
@logger.catch
def expired_general_requests_remover() -> int:
    expired_requests = ExpertSearchRequest.objects.filter(
        datetime_expire__lte=timezone.now(),
        is_active = True,
    ).select_related("creator")
    count = expired_requests.count()
    
    for request in expired_requests:
        notification = Notification(receiver=request.creator, text=_('Ваш запрос "{request_name}" был скрыт из выдачи').format(request_name=request.name))    
        notification.send()

    expired_requests.update(is_active=False)

    return count
