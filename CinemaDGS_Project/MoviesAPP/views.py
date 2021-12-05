from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse

from MoviesAPP.models import Movie
from MoviesAPP.serializers import MovieSerializer

# Create your views here.


@csrf_exempt
def movieAPI(request, id=0):
    if request.method == 'GET' and id != 0:
        employee = Movie.objects.get(id=id)
        movie_serializer = MovieSerializer(employee, many=False)
        return JsonResponse(movie_serializer.data, safe=False)
    elif request.method=='GET':
        movies = Movie.objects.all()
        movies_serializer=MovieSerializer(movies,many=True)
        return JsonResponse(movies_serializer.data,safe=False)
    elif request.method=='POST':
        movie_data=JSONParser().parse(request)
        movies_serializer=MovieSerializer(data=movie_data)
        if movies_serializer.is_valid():
            movies_serializer.save()
            return JsonResponse("Added Successfully",safe=False)
        return JsonResponse("Failed to Add",safe=False)        
    elif request.method=='PUT':
        movie_data=JSONParser().parse(request)
        movie=Movie.objects.get(movieID=movie_data['movieID'])
        movies_serializer=MovieSerializer(movie, data=movie_data)
        if movies_serializer.is_valid():
            movies_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update",safe=False)   
    elif request.method=='DELETE':
        movie=Movie.objects.get(movieID=id)
        movie.delete()
        return JsonResponse("Deleted Successfully",safe=False)
