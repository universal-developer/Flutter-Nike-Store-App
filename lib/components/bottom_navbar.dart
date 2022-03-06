import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_store_app/screens/find_screen.dart';
import 'package:nike_store_app/screens/like_screen.dart';
import 'package:nike_store_app/screens/profile_screen.dart';
import 'package:nike_store_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0;

  final _screens = const [
    HomeScreen(),
    FindScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _selectedIndex,
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          onTap: _onItemTapped,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.black,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: Colors.black,
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: Colors.black,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

