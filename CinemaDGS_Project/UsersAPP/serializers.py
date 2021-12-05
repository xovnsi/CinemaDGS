from django.contrib.postgres import fields
from rest_framework import serializers
from UsersAPP.models import Employee
from django.contrib.auth.models import User





class UserSerializer(serializers.ModelSerializer):

    employeeID = serializers.IntegerField(source='id')
    employeeFirstName = serializers.CharField(source='first_name')
    employeeLastName = serializers.CharField(source='last_name')
    employeeUsername = serializers.CharField(source='username')
    

    class Meta:
        model = User
        fields = ('employeeID',  'employeeFirstName', 'employeeLastName', 'employeeUsername')
        #fields=('title', 'date')
        #fields = '__all__'