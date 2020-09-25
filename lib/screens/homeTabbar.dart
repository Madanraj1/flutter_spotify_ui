import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_UI/screens/homeScreen.dart';
import 'package:spotify_UI/screens/premiumScreen.dart';
import 'package:spotify_UI/screens/searchScreen.dart';
import 'package:spotify_UI/screens/Library/yourLibrary.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    YourLibraryScreen(),
    PremiumScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        //     )
        //   ],
        // ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xff121212),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            iconSize: 30,
            unselectedFontSize: 10,
            selectedFontSize: 10,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                title: Text('Library'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled),
                title: Text('Premium'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ));
  }
}
