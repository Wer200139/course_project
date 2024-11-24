
from datetime import timedelta
from platform import system
from pathlib import Path
import environ
import loguru
import firebase_admin
from celery.schedules import crontab


BASE_DIR = Path(__file__).resolve().parent.parent
ROOT_DIR = environ.Path(__file__) - 3
APPS_DIR = ROOT_DIR

env = environ.Env()
env.read_env(str(ROOT_DIR.path(".env")))

SECRET_KEY = env("DJANGO_SECRET_KEY")
DEBUG = env.bool("DJANGO_DEBUG", False)

CORS_ORIGIN_ALLOW_ALL = True
CSRF_TRUSTED_ORIGINS = env.tuple("CSRF_TRUSTED_ORIGINS")
CSRF_COOKIE_DOMAIN = env("CSRF_COOKIE_DOMAIN")
CORS_ORIGIN_WHITELIST = env.tuple("CORS_ORIGIN_WHITELIST")
CORS_ALLOW_CREDENTIALS = True

DATA_UPLOAD_MAX_NUMBER_FIELDS = 5000
SITE_ID = 1

loguru.logger.add(f"{BASE_DIR}/logs.log", level="DEBUG", format="{time} {level} {message}")


LANGUAGE_CODE = "en"
TIME_ZONE = "UTC"
USE_TZ = True
USE_I18N = True
USE_L10N = True
LOCALE_PATHS = [str(APPS_DIR("locales"))]

ALLOWED_HOSTS = env.tuple("DJANGO_ALLOWED_HOSTS")


STATIC_ROOT = str(ROOT_DIR("static"))
MEDIA_ROOT = str(ROOT_DIR("media"))

STATIC_URL = 'static/'
MEDIA_URL = 'media/'

STATICFILES_DIRS = [
]

STATICFILES_FINDERS = [
    "django.contrib.staticfiles.finders.FileSystemFinder",
    "django.contrib.staticfiles.finders.AppDirectoriesFinder",
]


DJANGO_APPS = [
    'django.contrib.auth',
    "daphne",
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    "django.contrib.postgres",
    'rest_framework',
]

LOCAL_APPS = [
    'users',
    'chats',
    'admin.apps.ClokwiseAdminConfig'
]


THIRD_PARTY_APPS = [
    "loguru",
    "django_jsonform",
    "corsheaders",
    "phonenumber_field",
    "fcm_django",
    "channels",
]

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + LOCAL_APPS

REST_FRAMEWORK = {
    "DEFAULT_RENDERER_CLASSES": ("rest_framework.renderers.JSONRenderer",),
    "DEFAULT_PERMISSION_CLASSES": [
        "rest_framework.permissions.AllowAny",
        "rest_framework.permissions.IsAuthenticated",
    ],
    "DEFAULT_AUTHENTICATION_CLASSES": (
        "rest_framework_simplejwt.authentication.JWTAuthentication",
    ),
}

MIDDLEWARE = [
    "corsheaders.middleware.CorsMiddleware",
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'users.middlewares.ActiveUserMiddleware',
]

AUTHENTICATION_BACKENDS = {
    "django.contrib.auth.backends.ModelBackend",
}

AUTH_USER_MODEL = "users.User"
ACCOUNT_AUTHENTICATION_METHOD = "email"
ACCOUNT_USER_MODEL_USERNAME_FIELD = None
ACCOUNT_EMAIL_REQUIRED = True
ACCOUNT_USERNAME_REQUIRED = False

EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
EMAIL_HOST = env.str("EMAIL_HOST")
EMAIL_PORT = env.int("EMAIL_PORT")
EMAIL_USE_TLS = env.bool("EMAIL_USE_TLS")
EMAIL_USE_SSL = env.bool("EMAIL_USE_SSL")
SERVER_EMAIL_USERNAME = env.str("SERVER_EMAIL_USERNAME")
SERVER_EMAIL_PASSWORD = env.str("SERVER_EMAIL_PASSWORD")

CDN_URL = env.str("CDN_URL")

DOMAIN = env.str("DOMAIN")

ROOT_URLCONF = 'core.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            str(APPS_DIR.path("templates")),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                "django.template.context_processors.static",
            ],
        },
    },
]

WSGI_APPLICATION = 'core.wsgi.application'
ASGI_APPLICATION = 'core.asgi.application'


DATABASES = {
    "default": {
        "ENGINE": env("DJANGO_DB_ENGINE"),
        "NAME": env("POSTGRES_NAME"),
        "USER": env("POSTGRES_USER"),
        "PASSWORD": env("POSTGRES_PASSWORD"),
        "HOST": env("POSTGRES_HOST"),
        "PORT": env("POSTGRES_PORT"),
    }
}


AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
        'OPTIONS': {
            'min_length': 6,
        }
    },
    {
        'NAME': 'users.validators.password.LowercaseValidator'
    },
    {
        'NAME': 'users.validators.password.UppercaseValidator'
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(hours=3),
    "REFRESH_TOKEN_LIFETIME": timedelta(days=14),
    "ROTATE_REFRESH_TOKENS": True,
    "BLACKLIST_AFTER_ROTATION": False,
    "ALGORITHM": "HS256",
    "SIGNING_KEY": SECRET_KEY,
    "VERIFYING_KEY": None,
    "AUTH_HEADER_TYPES": ("JWT", "Bearer"),
    "USER_ID_FIELD": "id",
    "USER_ID_CLAIM": "user_id",
    "AUTH_TOKEN_CLASSES": ("rest_framework_simplejwt.tokens.AccessToken",),
    "TOKEN_TYPE_CLAIM": "token_type",
}

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


FCM_DJANGO_SETTINGS = {
    "DEFAULT_FIREBASE_APP": None,
    "APP_VERBOSE_NAME": "Clokwise",
    "ONE_DEVICE_PER_USER": False,
    "DELETE_INACTIVE_DEVICES": True,
}

FIREBASE_CRED = firebase_admin.credentials.Certificate("firebase.json")
FIREBASE_APP = firebase_admin.initialize_app(FIREBASE_CRED)

UNIX_OS = system() in ("Linux", "Darwin")

CELERY_BROKER_URL = f"redis://:{env('REDIS_PASSWORD')}@{env('REDIS_HOST')}:{env.int('REDIS_PORT')}"

CELERY_RESULT_BACKEND = f"redis://:{env('REDIS_PASSWORD')}@{env('REDIS_HOST')}:{env.int('REDIS_PORT')}"

CELERY_BEAT_SCHEDULE = {
    "expired_general_requests_remover": {
        "task": "expired_general_requests_remover",
        "schedule": crontab(minute="0,15,30,45")
    }
}

CACHES = {
    "default": {
        "BACKEND": "django_redis.cache.RedisCache",
        "LOCATION": f"redis://{env('REDIS_HOST')}:{env.int('REDIS_PORT')}/",
        "OPTIONS": {"CLIENT_CLASS": "django_redis.client.DefaultClient", "PASSWORD": env("REDIS_PASSWORD")},
    }
}

CHANNEL_LAYERS = {
    "default": {
        # "BACKEND": "channels.layers.InMemoryChannelLayer",
        "BACKEND": "channels_redis.core.RedisChannelLayer",
        "CONFIG": {"hosts": [{"host": env("REDIS_HOST"), "port": env.int("REDIS_PORT"), "password": env("REDIS_PASSWORD")}]},
    },
}

