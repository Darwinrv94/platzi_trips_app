import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});
  
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        'Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, metus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.';

    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace('Salto Ángel', 4, descriptionDummy),
            const ReviewList()
          ],
        ),
        const HeaderAppBar()
      ]
    );
  }

}