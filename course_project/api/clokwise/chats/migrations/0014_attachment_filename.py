# Generated by Django 5.1 on 2024-10-12 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chats', '0013_alter_message_options_message_datetime_edited'),
    ]

    operations = [
        migrations.AddField(
            model_name='attachment',
            name='filename',
            field=models.CharField(max_length=1024, null=True, verbose_name='Имя исходного файла'),
        ),
    ]