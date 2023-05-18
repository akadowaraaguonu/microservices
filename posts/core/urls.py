from django.urls import path
from . import views

urlpatterns = [
    # path('posts/', views.PostAPIViews.as_view(), name='post-list'),
    path('posts', views.PostAPIView.as_view())
]
