# Generated by Django 3.2.9 on 2021-12-04 22:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MoviesAPP', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='img',
            field=models.ImageField(db_column='movieImage', default='default.jpg', upload_to='images'),
        ),
    ]
