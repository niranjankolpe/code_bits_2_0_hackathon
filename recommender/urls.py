from django.urls import path
from recommender import views

urlpatterns = [
    path("", views.recommend, name="index"),
    path("recommend", views.recommend, name="recommend"),
    path("recommend_data", views.recommend_data, name="recommend_data"),
    path("recommend_data/<str:email>/<str:uname>/<str:password>", views.recommend_data, name="recommend_data")
]
