from django.shortcuts import render
from django.utils.translation import gettext_lazy as _



def index(request):

    return render(request, 'index.html', {'title': _('Main page'), 
                                         'content_title': _('Main page'),
                                         'active': '', 
                                         })
    
def about_me(request):
    return render(request, "about_me.html", {'title': _('About me'), 
                                         'content_title': _('About me'),
                                         'active': 'about_me', 
                                         })

def contacts(request):
    return render(request, "contacts.html", {'title': _('Contacts'), 
                                         'content_title': _('Contacts'),
                                         'active': 'contacts', 
                                         })
    
