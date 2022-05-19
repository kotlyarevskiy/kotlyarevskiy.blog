from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin
from mptt.admin import DraggableMPTTAdmin
from modeltranslation.admin import TranslationAdmin
from .models import *

class DraggableTranslationAdmin(TranslationAdmin, DraggableMPTTAdmin):
    pass

class MyTranslationAdmin(TranslationAdmin, admin.ModelAdmin):
    pass



admin.site.register(CategoriesAndAreas, DraggableTranslationAdmin,
    list_display=(
        'tree_actions',
        'indented_title',
  
        'is_category',
    ),
    list_display_links=(
        'indented_title',
    ),
)

@admin.register(CompetenceLevels)
class SortableCompetenceLevelsAdmin(SortableAdminMixin, MyTranslationAdmin):
    list_display=(
        'name',
        'description',
    )

# @admin.register(RoadMaps)
# class RoadMapsAdmin(TranslationAdmin, admin.ModelAdmin):
#     list_display=(
#         'name',
#         'description',
#     )


# @admin.register(RoadMapStructure)
# class RoadMapStructureAdmin(SortableAdminMixin, MyTranslationAdmin):
#     list_display=(
#         'area1',
#         'road_map1',
#         'level_of_competence1',
#         'order_in_roadmap',
#     )
    