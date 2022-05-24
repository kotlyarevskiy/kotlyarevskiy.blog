from modeltranslation.translator import register, TranslationOptions
from .models import *

@register(Projects)
class ProjectsTranslationOptions(TranslationOptions):
    fields = ('name', 'definition', 'description',)

