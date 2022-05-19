# Generated by Django 4.0.4 on 2022-05-19 19:08

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Projects',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, verbose_name='name')),
                ('name_en', models.CharField(max_length=150, null=True, verbose_name='name')),
                ('name_uk', models.CharField(max_length=150, null=True, verbose_name='name')),
                ('description', models.TextField(blank=True, null=True, verbose_name='description')),
                ('description_en', models.TextField(blank=True, null=True, verbose_name='description')),
                ('description_uk', models.TextField(blank=True, null=True, verbose_name='description')),
                ('status', models.CharField(choices=[('planning', 'Planning'), ('in progress', 'In progress'), ('finished', 'Finished')], default=('planning', 'Planning'), max_length=25, verbose_name='status')),
            ],
            options={
                'verbose_name': 'Projects',
                'verbose_name_plural': 'Projects',
            },
        ),
    ]
