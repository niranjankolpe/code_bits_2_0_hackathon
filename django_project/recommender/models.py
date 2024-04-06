from django.db import models
import datetime

# Create your models here.
class AcademicPerformance(models.Model):
    email = models.EmailField(primary_key=True)

    html          = models.IntegerField(default=0)
    python        = models.IntegerField(default=0)
    java          = models.IntegerField(default=0)
    c             = models.IntegerField(default=0)
    dsa           = models.IntegerField(default=0)
    oops          = models.IntegerField(default=0)
    maths         = models.IntegerField(default=0)
    communication = models.IntegerField(default=0)
    writing       = models.IntegerField(default=0)
    reading       = models.IntegerField(default=0)
    
    def __str__(self):
        return self.email

class StudentGoals(models.Model):
    email = models.EmailField(primary_key=True)

    domain = models.TextField(default="No Domain")

    duration_weeks  = models.IntegerField(default=1)
    available_hours = models.IntegerField(default=24)
    
    def __str__(self):
        return self.email
    
class StudentProfiles(models.Model):
    email = models.EmailField(primary_key=True)

    uname    = models.TextField(default="No Name")
    password = models.TextField(default="No Password")
    
    date = models.DateTimeField(default=datetime.datetime.now())
    
    def __str__(self):
        return self.email
    
class TrialModel(models.Model):
    email = models.EmailField(primary_key=True)
    uname = models.TextField(default="No Name")
    password = models.TextField(default="No Password")
    date = models.DateTimeField(default=datetime.datetime.now())
    def __str__(self):
        return self.email