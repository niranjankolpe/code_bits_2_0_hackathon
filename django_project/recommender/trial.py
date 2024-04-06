import requests

url = "http://niranjankolpe.pythonanywhere.com"

uname = "Issac"
email = "issac@samplemail.com"
password = "sample_passord@issac675"

# email = email
# domain="Data Science"
# duration_weeks=1
# available_hours=48
# html=0
# python=0
# java=0
# c=0
# dsa=0
# oops=0
# maths=0
# communication=0
# writing=0
# reading=0

# path("get_user_profile/<str:email>", views.get_user_profile, name="get_user_profile"),
#     path("get_user_goals/<str:email>", views.get_user_goals, name="get_user_goals"),
#     path("get_user_academics/<str:email>", views.get_user_academics, name="get_user_academics"),
# Update this URL for testing the 5 functions and type "py trial.py" in terminal or output.
url3 = url+f"/get_user_academics/{email}"

x = requests.get(url3)
print(x.text, x.status_code)