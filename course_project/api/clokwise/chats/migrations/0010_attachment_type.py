# Generated by Django 5.1 on 2024-10-11 15:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chats', '0009_message_attachments'),
    ]

    operations = [
        migrations.AddField(
            model_name='attachment',
            name='type',
            field=models.CharField(choices=[('FILE', 'Файл'), ('IMAGE', 'Картинка'), ('AUDIO', 'Аудио')], default='FILE', max_length=64, verbose_name='Тип вложения'),
        ),
    ]