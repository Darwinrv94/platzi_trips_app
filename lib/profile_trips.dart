import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/header/background_profile.dart';
import 'package:platzi_trips_app/profile/header/header_profile.dart';
import 'package:platzi_trips_app/profile/place/place_list.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const BackgroundProfile(),
        ListView(
          children: [
            const HeaderProfile(),
            PlaceList()
          ],
        ),
      ],
    );
  }
}
