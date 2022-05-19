from django.shortcuts import render
from django.utils.translation import gettext_lazy as _
import json
from .models import CategoriesAndAreas

def show_categories_and_areas(request):
    static_css_list = ['css/treeview.css']
    static_js_list = ['js/treeview.js']
    return render(request, 'categories_and_areas/index.html', 
                                        {'title': _('Categories and areas'), 
                                         'content_title': _('Categories and areas'),
                                         'active': 'projects', 
                                         'static_files': {'css': static_css_list, 'js': static_js_list},
                                         'categories_and_areas': CategoriesAndAreas.objects.all(),
                                         })