from typing import Any
from django.contrib import admin
from django.core.handlers.wsgi import WSGIRequest

class ClokwiseAdminSite(admin.AdminSite):
    site_header = "Clokwise"
    site_title = "Clokwise"

    def get_urls(self):
        urls = super().get_urls()
        custom_urls = []

        return urls + custom_urls
    
    def get_app_list(self, request: WSGIRequest) -> list[Any]:
        app_list = super().get_app_list(request)
        custom_apps = []

        return app_list + custom_apps
    
admin_site = ClokwiseAdminSite(name="admin")
