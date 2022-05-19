from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin
from modeltranslation.admin import TranslationAdmin
from .models import Projects

class MyTranslationAdmin(TranslationAdmin, admin.ModelAdmin):
    pass


@admin.register(Projects)
class SortableProjectsAdmin(SortableAdminMixin, MyTranslationAdmin):
    list_display=(
        'name',
        'description',
        'status',
    )
    

