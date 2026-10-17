from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
]


urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.login_view, name='login'),
]

urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.login_view, name='login'),
    path('precos/', views.precos_view, name='precos'),
]
