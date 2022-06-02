from modeltranslation.translator import register, TranslationOptions
from .models import *

@register(CategoriesAndAreas)
class CategoriesAndAreasTranslationOptions(TranslationOptions):
    fields = ('name', 'description',)

@register(CompetenceLevels)
class CompetenceLevelsTranslationOptions(TranslationOptions):
    fields = ('name', 'description',)

# @register(RoadMaps)
# class RoadMapsTranslationOptions(TranslationOptions):
#     fields = ('name', 'description',)
    
# @register(RoadMapStructure)
# class RoadMapsTranslationOptions(TranslationOptions):
#     pass
    
