from django.urls import path
from . import views

urlpatterns = [
    path('', views.test, name='root'),
    path('login', views.test, name='login'),
    path('signup', views.test, name='signup'),
    path('question/<int:question>', views.test, name='question'),
    path('ask', views.test, name='ask'),
    path('popular', views.test, name='popular'),
    path('new', views.test, name='new'),
]
