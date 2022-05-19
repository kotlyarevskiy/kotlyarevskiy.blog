from django.utils.translation import gettext_lazy as _
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey
from django.db.models import CharField, TextField, PositiveIntegerField

class NonStrippingCharField(CharField):
    """A TextField that does not strip whitespace at the beginning/end of
    it's value.  Might be important for markup/code."""

    def formfield(self, **kwargs):
        kwargs['strip'] = False
        return super(NonStrippingCharField, self).formfield(**kwargs)
    
class CategoriesAndAreas(MPTTModel):
    name = NonStrippingCharField(verbose_name=_('name'), max_length=150, unique=False)
    description = TextField(verbose_name=_('description'), null=True, blank=True)
    is_category = models.BooleanField(verbose_name=_('is category'))
    parent = TreeForeignKey('self', verbose_name=_('parent'),  on_delete=models.CASCADE, null=True, blank=True, related_name='children')

    def __str__(self): 
        return self.name
    
    def __unicode__(self): 
        return self.name
    
    class MPTTMeta:
        order_insertion_by = ['name']
        
    class Meta:
        verbose_name = verbose_name=_("Category or area")
        verbose_name_plural = verbose_name=_("Categories and areas")
        unique_together = [['name', 'parent']]

class CompetenceLevels(models.Model):
    name = NonStrippingCharField(verbose_name=_('name'), max_length=150, unique=False)
    description = TextField(verbose_name=_('description'), null=True)
    level = PositiveIntegerField(verbose_name=_('level'), default=0, blank=False, null=False)
        
    def __str__(self): 
        return self.name
            
    class Meta:
        verbose_name = verbose_name=_("Level of competence")
        verbose_name_plural = verbose_name=_("Levels of competence")
        ordering = ['level']

            
            
# class RoadMaps(models.Model):
#     name = NonStrippingCharField(verbose_name=_('name'), max_length=150, unique=False)
#     description = TextField(verbose_name=_('description'), null=True)
        
#     def __str__(self): 
#         return self.name
            
#     class Meta:
#         verbose_name = verbose_name=_("Road map")
#         verbose_name_plural = verbose_name=_("Road maps")

# class RoadMapStructure(models.Model):
#     area1 = OneToOneField(CategoriesAndAreas, verbose_name=_('area'), on_delete=models.CASCADE, primary_key=True)
#     road_map1 = ForeignKey(RoadMaps, on_delete=models.CASCADE)
#     level_of_competence1 = OneToOneField(CompetenceLevels, verbose_name=_('level of competence'), on_delete=models.CASCADE)
#     order_in_roadmap = PositiveIntegerField(verbose_name=_('order in roadmap'), default=0, blank=False, null=False)
        
#     def __str__(self): 
#         return self.name
            
#     class Meta:
#         verbose_name = verbose_name=_("Road map structure")
#         verbose_name_plural = verbose_name=_("Road map structure")
#         ordering = ['order_in_roadmap']
        