import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';


class BtmNavbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BtmNavbarState();
  }
}

class BtmNavbarState extends State<BtmNavbar> {
  int _selectedTab = 0;
  final _pageOptions = [
  /*  DashboardScreen(),
    ChallengeFinder(),
    LocationFinder(),
    RankingScreen()*/
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.amber,
            ),
            title: Text('Home'),
            backgroundColor: PrimaryBGColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.games_outlined,
              color: Colors.amber,
            ),
            title: Text('Challenge Finder'),
            backgroundColor: PrimaryBGColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.room,
              color: Colors.amber,
            ),
            title: Text('Location Finder'),
            backgroundColor: PrimaryBGColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timeline,
              color: Colors.amber,
            ),
            title: Text('Ranking'),
            backgroundColor: PrimaryBGColor,
          ),
        ],
        backgroundColor: PrimaryBGColor,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
