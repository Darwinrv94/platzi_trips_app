import 'package:flutter/material.dart';
import 'home_trips.dart';
//import 'platzi_trips_cupertino.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {
  int _indexTab = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      _indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[_indexTab],
      //bottomNavigationBar: const PlatziTripsCupertino(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          currentIndex: _indexTab,
          onTap: onTapTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ]
        ),
      ),
    );
  }
}