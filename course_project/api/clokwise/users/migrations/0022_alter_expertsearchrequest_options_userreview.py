# Generated by Django 5.1 on 2024-10-07 12:13

import django.core.validators
import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0021_expertsearchrequest_type'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='expertsearchrequest',
            options={'verbose_name': 'Запрос', 'verbose_name_plural': 'Запросы'},
        ),
        migrations.CreateModel(
            name='UserReview',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rating', models.PositiveSmallIntegerField(blank=True, default=0, null=True, validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(5)], verbose_name='Оценка')),
                ('text', models.TextField(blank=True, null=True, verbose_name='Текст отзыва')),
                ('type', models.CharField(choices=[('CLIENT', 'Заказчик'), ('EXPERT', 'Эксперт')], max_length=64, verbose_name='Тип')),
                ('reviewer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='reviews_sent', to=settings.AUTH_USER_MODEL, verbose_name='Создатель')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='reviews_received', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Отзыв',
                'verbose_name_plural': 'Отзывы',
            },
        ),
    ]
