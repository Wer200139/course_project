# Generated by Django 5.1 on 2024-10-16 16:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0026_rename_date_created_confirmationcode_datetime_created_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='notification',
            name='send_firebase_notification',
            field=models.BooleanField(default=True),
        ),
    ]