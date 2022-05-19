from django.db import models
from django.db.models import CharField, TextField, PositiveIntegerField
from django.utils.translation import gettext_lazy as _

class Projects(models.Model):
    """
        This class represents a...

    """
    
    STATUSES = (
        ('planning', _('Planning')),
        ('in progress', _('In progress')),
        ('finished', _('Finished')),
    )
    
    name = CharField(verbose_name=_('name'), max_length=150, unique=False)
    description = TextField(verbose_name=_('description'), null=True, blank=True)
    status = CharField(verbose_name=_('status'), max_length=25, choices=STATUSES, default=STATUSES[0])
    level = PositiveIntegerField(verbose_name=_('level'), default=0, blank=False, null=False)
    
    

    def __str__(self): 
        return self.name
    
    def __unicode__(self): 
        return self.name
        
    class Meta:
        verbose_name = verbose_name=_("Project")
        verbose_name_plural = verbose_name=_("Projects")
        ordering = ['level']