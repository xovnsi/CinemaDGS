from django.contrib.postgres import fields
from rest_framework import serializers
from MoviesAPP.models import Movie
from django.contrib.postgres.fields import ArrayField
#from MoviesAPP.serializers import Ticket



class MovieSerializer(serializers.ModelSerializer):

    movieTitle = serializers.CharField(source='title')
    movieID = serializers.IntegerField(source='id')
    movieDate = serializers.DateTimeField(source='date')
    movieDescription = serializers.CharField(source='desc')
    movieGenres = serializers.ListField(child = serializers.CharField(), source='genres')
    movieRoomID = serializers.CharField(source='roomID')
    movieImage = serializers.ImageField(source="img")

    class Meta:
        model = Movie
        fields = ('movieID', 'movieTitle', 'movieDate', 'movieDescription', 'movieRoomID','movieImage','movieGenres')
        #fields=('title', 'date')
        #fields = '__all__'