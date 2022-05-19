# Generated by Django 4.0.4 on 2022-05-03 12:33

import app_areas_of_knowledges.models
from django.db import migrations, models
import django.db.models.deletion
import mptt.fields


class Migration(migrations.Migration):

    dependencies = [
        ('app_areas_of_knowledges', '0002_alter_categoriesandareas_options_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='CompetenceLevels',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, verbose_name='name')),
            ],
            options={
                'verbose_name': 'Levels of competence',
                'verbose_name_plural': 'Levels of competence',
            },
        ),
        migrations.AlterModelOptions(
            name='categoriesandareas',
            options={'verbose_name': 'Categories and areas', 'verbose_name_plural': 'Categories and areas'},
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='is_category',
            field=models.BooleanField(verbose_name='is category'),
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='name',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, verbose_name='name'),
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='name_en',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, null=True, verbose_name='name'),
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='name_uk',
            field=app_areas_of_knowledges.models.NonStrippingCharField(max_length=150, null=True, verbose_name='name'),
        ),
        migrations.AlterField(
            model_name='categoriesandareas',
            name='parent',
            field=mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='app_areas_of_knowledges.categoriesandareas', verbose_name='parent'),
        ),
        migrations.AlterUniqueTogether(
            name='categoriesandareas',
            unique_together={('name', 'parent')},
        ),
    ]