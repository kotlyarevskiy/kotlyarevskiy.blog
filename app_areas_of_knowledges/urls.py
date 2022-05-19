from django.urls import path
from .views import *

urlpatterns = [
    path('', show_categories_and_areas, name = 'categories_and_areas'),
]