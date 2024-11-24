# Generated by Django 5.1 on 2024-09-03 19:18

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0005_alter_confirmemailtoken_date_created_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserAvatar',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='avatars', verbose_name='Изображение')),
                ('image_small', models.ImageField(upload_to='avatars', verbose_name='Уменьшенный вариант')),
                ('is_preset', models.BooleanField(blank=True, default=False, verbose_name='Доступен для выбора')),
            ],
            options={
                'verbose_name': 'Аватар',
                'verbose_name_plural': 'Аватары',
            },
        ),
        migrations.AddField(
            model_name='user',
            name='avatar',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='users.useravatar'),
        ),
    ]