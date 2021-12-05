from django.core.checks import messages
from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth  
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from rest_framework.decorators import api_view

from UsersAPP.models import User
from UsersAPP.serializers import UserSerializer 
# Create your views here.


@api_view(['GET'])
def swanger(request):
  resutl = {'a': 1}
  resp = JsonResponse(resutl)
  resp['Access-Control-Allow-Origin'] = '*'
  return resp 

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        #username = request.POST.get('username')
        password = request.POST['password']
        #password = request.POST.get('password')
    

        user = auth.authenticate(username=username,password=password)
        print("xD")
        if user is not None:
            auth.login(request, user)
            return redirect("/")
        else:
            print('invalid credentials')
            return redirect('login')
    else:
        return render(request, 'login.html')

def register(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        
        if password1==password2:
            if User.objects.filter(username=username).exists():
                print('Username taken')
        
            else:
                user = User.objects.create_user(
                    username=username,
                    password=password1,
                    first_name=first_name,
                    last_name=last_name
                )
                user.save()
                print('user created')
                return redirect('login')
        else:
            print("password not matching")
        return redirect('/')
    return render(request, 'register.html')

def logout(request):
    auth.logout(request)
    return redirect('/')

@csrf_exempt
def userAPI(request,id=0):
    if request.method == 'GET' and id != 0:
        user = User.objects.get(id=id)
        user_serializer = UserSerializer(user, many=False)
        return JsonResponse(user_serializer.data, safe=False)
    elif request.method=='GET':
        users = User.objects.all()
        users_serializer=UserSerializer(users,many=True)
        return JsonResponse(users_serializer.data,safe=False)
    elif request.method=='POST':
        user_data=JSONParser().parse(request)
        user_serializer=UserSerializer(data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse("Added Successfully",safe=False)
        return JsonResponse("Failed to Add",safe=False)      
    elif request.method=='PUT':
        user_data=JSONParser().parse(request)
        user=User.objects.get(userID=user_data['userID'])
        users_serializer=UserSerializer(user, data=user_data)
        if users_serializer.is_valid():
            users_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update",safe=False)   
    elif request.method=='DELETE':
        user=User.objects.get(userID=id)
        user.delete()
    
        return JsonResponse("Deleted Successfully",safe=False)   