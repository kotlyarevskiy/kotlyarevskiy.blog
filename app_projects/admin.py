from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin
from modeltranslation.admin import TranslationAdmin
from .models import Projects
from .forms import ProjectAdminForm
  
class MyTranslationAdmin(TranslationAdmin, admin.ModelAdmin):
    pass


@admin.register(Projects)
class SortableProjectsAdmin(SortableAdminMixin, MyTranslationAdmin):
    form = ProjectAdminForm
    list_display=(
        'name',
        'definition',
        'status',
    )
    

