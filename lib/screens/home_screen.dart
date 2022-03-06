import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nike_store_app/components/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(data: MediaQueryData(), child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        padding: EdgeInsets.only(top: 40),
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xffFAFAFA),
              elevation: 0,
              shadowColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.command, color: Colors.black),
                  Image.asset('assets/nike_logo.png'),
                  Icon(CupertinoIcons.shopping_cart, color: Colors.black),
                ],
              )
          ),
          body: const Center(

              child: Text('Home Screen')
          ),
        )
    ));
  }
}
