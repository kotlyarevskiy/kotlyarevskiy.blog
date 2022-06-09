from django.conf.urls.i18n import i18n_patterns
from django.views.i18n import JavaScriptCatalog
from django.contrib import admin
from django.urls import path, include
from .views import *
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [

    path('admin/', admin.site.urls),
    
] + i18n_patterns(
    
    path('i18n/', include('django.conf.urls.i18n')),
    path('jsi18n/', JavaScriptCatalog.as_view(), name='javascript-catalog'),
    
    path('ckeditor/', include('ckeditor_uploader.urls')),
    
    path('', index, name='index'),
    
    path('about_me/', about_me, name="about_me"),
    path('contacts/', contacts, name="contacts"),
    
    # Projects
    path('projects/', include('app_projects.urls')),
    path('weather/', include('app_weather.urls')),
    path('categories_and_areas/', include('app_areas_of_knowledges.urls')),  
    
    # Auth
    path('auth/', include('app_auth.urls')),
        
) + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
