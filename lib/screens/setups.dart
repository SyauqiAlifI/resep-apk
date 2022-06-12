import 'package:flutter/material.dart';
import 'package:resep_apk/searchpage/searchpage.dart';
import 'package:resep_apk/settingspage/settingspage.dart';

import '../homepages/home.dart';

class Setups extends StatefulWidget {
  const Setups({Key? key}) : super(key: key);

  @override
  State<Setups> createState() => _SetupsState();
}

class _SetupsState extends State<Setups> {

  int _selectedIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          )
        ],
        //  Index
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,

        //  Selected
        selectedFontSize: 14,
        selectedIconTheme: IconThemeData(color: Colors.blueAccent),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        //  UnSelected
        unselectedIconTheme: IconThemeData(color: Colors.black45),
      ),
    );
  }

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
