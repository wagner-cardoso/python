from django.urls import path

from . import views

app_name = 'aluno'
urlpatterns = [
    path('', views.index, name='index'),
    path('man', views.manipulation, name="manipulation"),
    path('ordem', views.ordem, name="ordem"),
]