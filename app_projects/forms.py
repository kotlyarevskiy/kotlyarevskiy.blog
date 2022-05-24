from django import forms
from django.utils.translation import gettext_lazy as _
from .models import Projects
from ckeditor_uploader.widgets import CKEditorUploadingWidget       
    
class ProjectAdminForm(forms.ModelForm):
    
    description_en = forms.CharField(widget=CKEditorUploadingWidget())
    description_uk = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        
        model = Projects
        exclude = ('id', 'level',)
        
class ProjectForm(forms.ModelForm):
    
    description_en = forms.CharField(widget=CKEditorUploadingWidget(), required=False)
    description_uk = forms.CharField(widget=CKEditorUploadingWidget(), required=False)

    class Meta:
        
        model = Projects
        exclude = ('id', 'level', 'name', 'definition', 'description',)
        
    def __init__(self, *args, **kwargs):     
        
        super(ProjectForm, self).__init__(*args, **kwargs)
        
        name_en         = self.fields['name_en']
        name_uk         = self.fields['name_uk']
        definition_en   = self.fields['definition_en']
        definition_uk   = self.fields['definition_uk']
        description_en  = self.fields['description_en']
        description_uk  = self.fields['description_uk']
        
        
        name_en.widget.attrs.update({'class': 'form-control lang en', 'placeholder': _('Enter project en name...')})
        name_uk.widget.attrs.update({'class': 'form-control lang uk', 'placeholder': _('Enter project uk name...')})
   
        definition_en.widget.attrs.update({'class': 'form-control lang en', 'placeholder': _('Enter project en definition...')})
        definition_uk.widget.attrs.update({'class': 'form-control lang uk', 'placeholder': _('Enter project uk definition...')})
        
        description_en.widget.attrs.update({'class': ' lang en'})
        description_uk.widget.attrs.update({'class': ' lang uk'})   
            
        self.fields['status'].widget.attrs.update({'class': 'form-select'})

        
        