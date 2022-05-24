from django.urls import path
from .views import *

urlpatterns = [
    path('',           projects,       name = 'projects'),
    path('project',    project_page,   name = 'project_page'),
]
