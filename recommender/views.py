from django.shortcuts import render
from django.http import HttpResponse
from recommender.models import *

# Create your views here.
def recommend(request):
    if request.method == "POST":
        return HttpResponse(f"<h5>This is a HTTP Response using POST method.</h5>")
    else:
        return HttpResponse(f"<h5>This is a HTTP Response using GET method.</h5>")
    
def recommend_data(request, email, uname, password):
    db1 = AcademicPerformance(email=email, html=0, python=0, java=0, c=0, dsa=0, oops=0, maths=0, communication=0, writing=0, reading=0)
    db1.save()
    
    db2 = StudentGoals(email = email, domain="Data Science", duration_weeks=1, available_hours=48)
    db2.save()
    
    db3 = StudentProfiles(email = email, uname = uname, password = password, date = datetime.datetime.now())
    db3.save()

    return HttpResponse(f"GET method with data: {email} and {uname} and {password}.")