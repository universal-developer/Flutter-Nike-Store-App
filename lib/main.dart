import 'package:flutter/material.dart';
import 'package:nike_store_app/screens/find_screen.dart';
import 'package:nike_store_app/screens/like_screen.dart';
import 'package:nike_store_app/screens/profile_screen.dart';
import 'package:nike_store_app/screens/home_screen.dart';
import 'package:nike_store_app/components/bottom_navbar.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _selectedIndex = 0;

  final _screens = const [
    HomeScreen(),
    FindScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          extendBody: true,
          body: _screens.elementAt(_selectedIndex),
          bottomNavigationBar: const BottomNavBar()),
    );
  }
}
