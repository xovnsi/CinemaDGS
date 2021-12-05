from django.db import models
from django.contrib.auth.models import User
# Create your models here.


class Employee(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True, db_column="employeeID")
    position = models.CharField(max_length=50, db_column="employeePosition")
    
    class Meta:
        db_table = "employees"
