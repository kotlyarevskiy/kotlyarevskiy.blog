from django.shortcuts import render, redirect
from django.utils.translation import gettext_lazy as _
from .models import Projects
from .forms import ProjectForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required, permission_required

def projects(request):
    
    projects = Projects.objects.all()
    
    context = { 'title': _('Projects'), 
                'content_title': _('Projects'),
                'active': 'projects',
                'projects': projects,
                }
    
    return render(request, 'projects/index.html', context)

@permission_required('app_projects.delete_projects', login_url='login_user')
def project_delete(request, id):
    
    project = Projects.objects.get(id=id)
    
    if request.method == 'GET':
        
        # Delete
        
        # TODO: add a question!!!!!!
        # TODO: add messages.
        
        if not project == None:
            
            project.delete()
        
    return redirect('projects')

@permission_required(['app_projects.add_projects', 'app_projects.change_projects'], login_url='login_user')
def project_copy(request, id=0):
    
    project = Projects.objects.get(id=id) if id else None
    action = _('copy')    
    
    if request.method == 'POST':
        
        # Edit
        
        action = _('edit')
        data = request.POST
        project_form = ProjectForm(data, instance=project)
        
    
        if project_form.is_valid():
            project_form.save()
            messages.success(request, _('The changes has been saved.'))
            
    elif request.method == 'GET':        
        
        # Create if None or Copy
                
        if not project == None:
            
            action = _('copy')
            project.pk = None
            project.save()
        
        
        project_form = ProjectForm(instance=project)
        
    
    static_css_list = []
    static_js_list = ['js/project_page.js']   
             
    context = { 'title':            _('Project page'), 
                'content_title':    _('Project page'),
                'active':           'projects',
                'action':           action,
                'project_form':     project_form, 
                'static_files':     {'css': static_css_list, 'js': static_js_list},
                }
                     
    return render(request, 'projects/project_page.html', context)

@permission_required(['app_projects.add_projects', 'app_projects.change_projects'], login_url='login_user')
def project_page(request, id=0):
    
    project = Projects.objects.get(id=id) if id else None
    action = _('create')    
    
    if request.method == 'POST':
        
        # Edit
        
        action = _('edit')
        data = request.POST
        project_form = ProjectForm(data, instance=project)
        
    
        if project_form.is_valid():
            project_form.save()
            messages.success(request, _('The changes has been saved.'))
            
    elif request.method == 'GET':        
        
        # Create and Edit
                
        if not project == None:
            
            action = _('edit')
        
        project_form = ProjectForm(instance=project)
        
    
    static_css_list = []
    static_js_list = ['js/project_page.js']   
             
    context = { 'title':            _('Project page'), 
                'content_title':    _('Project page'),
                'active':           'projects',
                'action':           action,
                'project_form':     project_form, 
                'static_files':     {'css': static_css_list, 'js': static_js_list},
                }
                     
    return render(request, 'projects/project_page.html', context)