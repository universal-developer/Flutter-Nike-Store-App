import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_store_app/screens/find_screen.dart';
import 'package:nike_store_app/screens/like_screen.dart';
import 'package:nike_store_app/screens/profile_screen.dart';
import 'package:nike_store_app/screens/home_screen.dart';
import 'package:nike_store_app/components/bottom_navbar.dart';


void main() {
  runApp(Home());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(data: MediaQueryData(), child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MediaQuery(
        data: MediaQueryData(),
        child: Home(),
      )
    ));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  final _screens = const [
    HomeScreen(),
    FindScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return MediaQuery(data: MediaQueryData(), child: Scaffold(
        body: _screens.elementAt(_selectedIndex),

        bottomNavigationBar: const BottomNavBar()
    ));
  }
}

