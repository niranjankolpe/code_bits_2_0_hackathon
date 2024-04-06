from django.shortcuts import render
from django.http import HttpResponse, HttpResponseServerError
from recommender.models import AcademicPerformance, StudentGoals, StudentProfiles
import datetime
import warnings
warnings.filterwarnings("ignore")

# Create your views here.
def index(request):
    return HttpResponse("Hello, welcome to Home Page.")

def home(request):
    return render(request, "home.html")

def recommend(request):
    if request.method == "POST":
        return HttpResponse("<h5>This is a HTTP Response using POST method.</h5>")
    else:
        return HttpResponse("<h5>This is a HTTP Response using GET method.</h5>")

def recommend_data(request, email, uname, password):
    db1 = AcademicPerformance(email=email, html=0, python=0, java=0, c=0, dsa=0, oops=0, maths=0, communication=0, writing=0, reading=0)
    db1.save()

    db2 = StudentGoals(email = email, domain="Data Science", duration_weeks=1, available_hours=48)
    db2.save()

    db3 = StudentProfiles(email = email, uname = uname, password = password, date = datetime.datetime.now())
    db3.save()

    return HttpResponse(f"GET method with data: {email} and {uname} and {password}.")

def emailavailable(request, email):
    try:
        StudentProfiles.objects.get(email=email)
        return HttpResponseServerError("Account with this email exists.")
    except:
        return HttpResponse("Account with this email does not exist.")

def signin(request, email, password):
    try:
        StudentProfiles.objects.get(email=email)
    except:
        return HttpResponseServerError(f"Account with the email {email} does not exist.")

    try:
        StudentProfiles.objects.get(email=email, password=password)
    except:
        return HttpResponseServerError("Invalid Credentials.")
    return HttpResponse(f"Your account with email: {email} logged in successfully.")

def update_AcademicPerformance(request, email, html, python, java, c, dsa, oops, maths, communication, writing, reading):
    db = AcademicPerformance(email=email, html=html, python=python, java=java, c=c, dsa=dsa, oops=oops, maths=maths, communication=communication, writing=writing, reading=reading)
    db.save()
    return HttpResponse(f"Academic Performance of {email} has been updated!")

def update_StudentGoals(request, email, domain, duration_weeks, available_hours):
    db = StudentGoals(email=email, domain=domain, duration_weeks=duration_weeks, available_hours=available_hours)
    db.save()
    return HttpResponse(f"Student Goals of {email} has been updated!")

def get_user_profile(request, email):
    user_Profile = StudentProfiles.objects.get(email=email)
    user_Profile_data = [email, user_Profile.uname, user_Profile.password, user_Profile.date]
    return HttpResponse(user_Profile_data)

def get_user_goals(request, email):
    user_Goals = StudentGoals.objects.get(email=email)
    user_Goals_data = [email, user_Goals.domain, user_Goals.duration_weeks, user_Goals.available_hours]
    return HttpResponse(user_Goals_data)

def get_user_academics(request, email):
    user_AcademicPerformance = AcademicPerformance.objects.get(email=email)
    user_AcademicPerformance_data = [email, user_AcademicPerformance.html, user_AcademicPerformance.python, user_AcademicPerformance.java, user_AcademicPerformance.c, user_AcademicPerformance.dsa, user_AcademicPerformance.oops, user_AcademicPerformance.maths, user_AcademicPerformance.communication, user_AcademicPerformance.writing, user_AcademicPerformance.reading]
    return HttpResponse(user_AcademicPerformance_data)


