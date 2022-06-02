# Generated by Django 4.0.4 on 2022-05-03 13:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_areas_of_knowledges', '0006_alter_competencelevels_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='competencelevels',
            name='description',
            field=models.TextField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='competencelevels',
            name='description_en',
            field=models.TextField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='competencelevels',
            name='description_uk',
            field=models.TextField(null=True, verbose_name='description'),
        ),
        migrations.AlterField(
            model_name='competencelevels',
            name='level',
            field=models.PositiveIntegerField(default=0, verbose_name='level'),
        ),
    ]
