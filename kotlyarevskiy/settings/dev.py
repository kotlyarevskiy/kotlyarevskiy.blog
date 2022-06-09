from .base import *

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'abcdef'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.0/howto/static-files/

STATIC_URL = '_static/'
STATIC_ROOT = os.path.join(BASE_DIR, "_staticfiles")
STATICFILES_DIRS = [
    BASE_DIR / "_static",
]

CKEDITOR_UPLOAD_PATH = os.path.join(STATIC_ROOT, "ckeditor_uploads")