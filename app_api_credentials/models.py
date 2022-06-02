from django.db import models
from django.utils.translation import gettext_lazy as _


class APICredentials(models.Model):
    """
        This class represents an API Credentials. \n
        Attributes:
        -----------
        param name: str contains name identificator.
        type parameters: str contains json string of parameters (URI, secured, endpoint, credential TOKEN).

    """

    name = models.CharField(verbose_name=_('name'), max_length=50)
    parameters = models.JSONField(verbose_name=_('parameters'))
    
    def __str__(self): 
        return self.name  
    
    class Meta:
        verbose_name = verbose_name=_("API credential")
        verbose_name_plural = verbose_name=_("API credentials")
