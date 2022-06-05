import django_on_heroku
from decouple import config

from .base import *


SECRET_KEY = config('SECRET_KEY')


DEBUG = False

ALLOWED_HOSTS = [
                 'kotlyarevskiy-blog.heroku.com',
                 'kotlyarevskiy.blog',]

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.0/howto/static-files/

STATIC_URL = '_static/'
STATIC_ROOT = os.path.join(BASE_DIR, "_static")


DEBUG_PROPAGATE_EXCEPTIONS = True
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'verbose': {
            'format' : "[%(asctime)s] %(levelname)s [%(name)s:%(lineno)s] %(message)s",
            'datefmt' : "%d/%b/%Y %H:%M:%S"
        },
        'simple': {
            'format': '%(levelname)s %(message)s'
        },
    },
'handlers': {
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
        },
    },
    'loggers': {
        'MYAPP': {
            'handlers':['console'],
            'level': 'DEBUG',
        },
    }
}

django_on_heroku.settings(locals(), staticfiles=False)
del DATABASES['default']['OPTIONS']['sslmode']