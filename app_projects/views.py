from django.shortcuts import render
from django.utils.translation import gettext_lazy as _
#from .models import Projects

def projects(request):

    return render(request, 'projects/index.html', 
                                        {'title': _('Projects'), 
                                         'content_title': _('Projects'),
                                         'active': 'projects', 
                                         })