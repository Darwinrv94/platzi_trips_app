import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/place/place.dart';

import '../../models/place.dart';

class PlaceList extends StatelessWidget {
  InfoPlace info = InfoPlace(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  InfoPlace info2 = InfoPlace(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');

  PlaceList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Place('assets/images/land1.jpeg', info),
          Place('assets/images/land2.jpeg', info2),
        ],
      ),
    );
  }

}