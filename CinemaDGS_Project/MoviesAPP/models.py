from django.db import models
from django.contrib.postgres.fields import ArrayField

# Create your models here.


class Room(models.Model):
    seats = models.IntegerField(db_column="roomSeatsQuantity")

    class Meta:
        db_table = "rooms"

class Movie(models.Model):
    id = models.AutoField(primary_key=True, db_column="movieID")
    title = models.CharField(max_length=50, db_column="movieTitle")
    date = models.DateTimeField(db_column="movieDate")
    desc = models.CharField(max_length=400, db_column="movieDescription")
    genres = ArrayField(models.CharField(max_length=50), db_column="movieGenres")
    img = models.ImageField(db_column="movieImage", upload_to='images', default='default.jpg')
    roomID = models.ForeignKey(Room, on_delete=models.CASCADE, db_column="movieRoomID", null=True)

    class Meta:
        db_table = "movies"
