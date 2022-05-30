from django.shortcuts import render, redirect
from django.utils.translation import gettext_lazy as _
from .models import Projects
from .forms import ProjectForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required, permission_required
from django.core.paginator import Paginator

def get_or_none(classmodel, **kwargs):
    
    try:
        
        return classmodel.objects.get(**kwargs)
    
    except classmodel.DoesNotExist:
        
        return None
    
def projects(request):
    
    projects = Projects.objects.all()
    paginator = Paginator(projects, 4)
  
    page_number = request.GET.get('page')
    page_projects = paginator.get_page(page_number) 
    pages_iterator = "i" * paginator.num_pages
  
    static_css_list = []
    static_js_list = ['js/controls_events.js']    
    
    context = { 'title': _('Projects'), 
                'content_title':    _('Projects'),
                'active':           'projects',
                'projects':         page_projects,
                'pages_iterator':   pages_iterator,
                'static_files':     {'css': static_css_list, 'js': static_js_list},
                }
    
    return render(request, 'projects/index.html', context)

@permission_required('app_projects.delete_projects', login_url='login_user')
def project_delete(request, id):
    
    project = get_or_none(Projects, id=id)
    
    if request.method == 'GET':
        
        # Delete
        
        if project == None:
            
            messages.error(request, "ID: " + str(id) + " >> " + _('The project does not exist.'))
            
        else:
            
            project.delete()
            messages.success(request, str(project) + " >> " + _('The project has been removed.'))
        
    return redirect('projects')

@permission_required(['app_projects.add_projects', 'app_projects.change_projects'], login_url='login_user')
def project_copy(request, id=0):
    
    project = get_or_none(Projects, id=id) if id else None
    action = _('copy')    
    
    if request.method == 'POST':
        
        # Edit
        
        action = _('edit')
        data = request.POST
        post_action = request.POST['action']
        project_form = ProjectForm(data, instance=project) 
        
        if post_action == 'save':
           
           if project_form.is_valid():
                project_form.save()
                messages.success(request, _('The changes has been saved.')) 
            
        elif post_action == 'save_and_finish':                      
        
            if project_form.is_valid():
                project_form.save()
                messages.success(request, str(project) + " >> " + _('The changes has been saved.'))
        
            return redirect('projects')
        
        elif post_action == 'finish':
            
            return redirect('projects')
            
    elif request.method == 'GET':        
        
        # Create if None or Copy
                
        if not project == None:
            
            action = _('copy')
            project.pk = None
            project.save()
            messages.success(request, _('New project was created and saved.'))
        
        
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
    
    project = get_or_none(Projects, id=id) if id else None
    action = _('create')    
    
    if request.method == 'POST':
        
        # Edit
        
        action = _('edit')
        data = request.POST
        post_action = request.POST['action']
        project_form = ProjectForm(data, instance=project) 
        
        if post_action == 'save':
           
           if project_form.is_valid():
                project_form.save()
                messages.success(request, _('The changes has been saved.')) 
            
        elif post_action == 'save_and_finish':                      
        
            if project_form.is_valid():
                project_form.save()
                messages.success(request, str(project) + " >> " + _('The changes has been saved.'))
        
            return redirect('projects')
        
        elif post_action == 'finish':
            
            return redirect('projects')       
                
            
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

