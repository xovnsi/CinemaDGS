# Generated by Django 3.2.9 on 2021-12-05 01:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MoviesAPP', '0005_alter_movie_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='date',
            field=models.DateTimeField(db_column='movieDate'),
        ),
    ]