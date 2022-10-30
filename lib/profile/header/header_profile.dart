import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/header/user_info.dart';
import 'buttons_bar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});
  
  @override
  Widget build(BuildContext context) {
    const title = Text(
      'Profile',
      style:  TextStyle(
        fontFamily: 'Lato',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0
      )
    );

    return Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 50.0
      ),
      child: Column(
        children: [
          Row(
            children: const [
              title
            ],
          ),
          UserInfo('assets/images/profile.jpeg', 'Darwin Rodríguez',
              'darwinrv94@gmail.com'),
          const ButtonsBar()
        ]
      )
    );
  }
}