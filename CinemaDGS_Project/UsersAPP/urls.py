from django.conf.urls import url



from django.urls import path
from . import views

urlpatterns = [
    path("account/register", views.register, name="register"),
    path("account/login", views.login, name="login"),
    url(r'^employees/$', views.userAPI),
    url(r'^employees/([0-9]+)/$', views.userAPI),
    
]