# Generated by Django 4.0.4 on 2022-05-01 17:46

import app_areas_of_knowledges.models
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_areas_of_knowledges', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='categoriesandareas',
            options={'verbose_name': 'Category or area', 'verbose_name_plural': 'Categories and areas'},
        ),
        migrations.AddField(
            model_name='categoriesandareas',
            name='name_en',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='categoriesandareas',
            name='name_uk',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, null=True),
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='name',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150),
        ),
    ]
