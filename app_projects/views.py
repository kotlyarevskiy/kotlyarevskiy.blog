from django.shortcuts import render
from django.utils.translation import gettext_lazy as _
from .models import Projects
from .forms import ProjectForm
from django.contrib import messages

def projects(request):
    
    projects = Projects.objects.all()
    
    context = { 'title': _('Projects'), 
                'content_title': _('Projects'),
                'active': 'projects',
                'projects': projects,
                }
    return render(request, 'projects/index.html', context)

def project_page(request):
    if 'id' in request:
        project = Projects.objects.get(id=request.id)
    else:
        project = None   
    
    if request.method == 'POST':
        data = request.POST
        project_form = ProjectForm(data, instance=project)
        
    
        if project_form.is_valid():
            project_form.save()
            messages.success(request, _('The changes has been saved.'))
    
    else:
        project_form = ProjectForm(instance=project)
    
    static_css_list = []
    static_js_list = ['js/project_page.js']   
             
    context = { 'title':            _('Project page'), 
                'content_title':    _('Project page'),
                'active':           'projects',
                'project_form':     project_form, 
                'static_files':     {'css': static_css_list, 'js': static_js_list},
                }
                     
    return render(request, 'projects/project_page.html', context)