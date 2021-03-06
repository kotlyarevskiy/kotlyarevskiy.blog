from django.urls import path
from .views import *

urlpatterns = [
    path('',                        projects,       name = 'projects'),
    path('project',                 project_page,   name = 'project_page'),
    path('project/<int:id>/update', project_page,   name = 'project_update'),
    path('project/<int:id>/copy',   project_copy,   name = 'project_copy'),
    path('project/<int:id>/delete', project_delete, name = 'project_delete'),

]
