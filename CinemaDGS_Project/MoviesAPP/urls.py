from django.conf.urls import url
from MoviesAPP import views
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
#from MovieApp.views import index

urlpatterns=[
    url(r'^movies/$', views.movieAPI),
    url(r'^movies/([0-9]+)/$', views.movieAPI),

    #path('m/',index, name="index")
]



#if settings.DEBUG:
#       urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)