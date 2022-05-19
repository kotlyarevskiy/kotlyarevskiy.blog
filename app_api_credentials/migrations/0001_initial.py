# Generated by Django 4.0.4 on 2022-04-19 21:32

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='APICredentials',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('parameters', models.JSONField()),
            ],
            options={
                'verbose_name': 'API credential',
                'verbose_name_plural': 'API credentials',
            },
        ),
    ]