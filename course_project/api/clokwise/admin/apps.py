from django.contrib.admin.apps import AdminConfig

class ClokwiseAdminConfig(AdminConfig):
    default_site = "admin.admin.ClokwiseAdminSite"
