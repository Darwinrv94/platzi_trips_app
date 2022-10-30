import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    Set data = {
      {
        'pathImage':
            'https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-6.ImagenRedonda/platzi_trips_app/assets/img/people.jpg',
        'name': 'Darwin Rodríguez',
        'details': '1 review 5 photos',
        'comment': 'Excelente lugar',
        'stars': 4.5
      },
      {
        'pathImage':
            'https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-6.ImagenRedonda/platzi_trips_app/assets/img/people.jpg',
        'name': 'Joseimy Meleán',
        'details': '2 review 4 photos',
        'comment': 'Excelente lugar, recomendado',
        'stars': 5.0
      },
      {
        'pathImage':
            'https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-6.ImagenRedonda/platzi_trips_app/assets/img/people.jpg',
        'name': 'Deilyn Rodríguez',
        'details': '2 review 4 photos',
        'comment': 'Excelente lugar, recomendado',
        'stars': 4.7
      },
      {
        'pathImage':
            'https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-6.ImagenRedonda/platzi_trips_app/assets/img/people.jpg',
        'name': 'Joseimy Meleán',
        'details': '2 review 4 photos',
        'comment': 'Excelente lugar, recomendado',
        'stars': 5.0
      },
    };

    var listView = <Widget>[];

    for (var i = 0; i < data.length; i++) {
      var element = data.elementAt(i);

      listView.add(Review(element['pathImage'], element['name'], element['details'], element['comment'], element['stars']));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: listView,
    );
  }

}