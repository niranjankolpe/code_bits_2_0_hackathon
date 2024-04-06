from django.urls import path
from recommender import views

urlpatterns = [
    path("", views.index, name="index"),
    path("home", views.home, name="home"),
    path("recommend", views.recommend, name="recommend"),
    path("recommend_data", views.recommend_data, name="recommend_data"),
    path("recommend_data/<str:email>/<str:uname>/<str:password>", views.recommend_data, name="recommend_data"),
    path("emailavailable/<str:email>", views.emailavailable, name="emailavailable"),
    path("signin/<str:email>/<str:password>", views.signin, name="signin"),
    path("update_AcademicPerformance/<str:email>/<int:html>/<int:python>/<int:java>/<int:c>/<int:dsa>/<int:oops>/<int:maths>/<int:communication>/<int:writing>/<int:reading>",
         views.update_AcademicPerformance, name="update_AcademicPerformance"),
    path("update_StudentGoals/<str:email>/<str:domain>/<int:duration_weeks>/<int:available_hours>",
         views.update_StudentGoals, name="update_StudentGoals"),
    path("get_user_profile/<str:email>", views.get_user_profile, name="get_user_profile"),
    path("get_user_goals/<str:email>", views.get_user_goals, name="get_user_goals"),
    path("get_user_academics/<str:email>", views.get_user_academics, name="get_user_academics"),

]
