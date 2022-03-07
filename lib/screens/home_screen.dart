import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nike_store_app/screens/choosing_complectation_green.dart';
import 'package:nike_store_app/screens/choosing_complectation_pink.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
            backgroundColor: const Color(0xffFAFAFA),
            elevation: 0,
            shadowColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.command, color: Colors.black, size: 30),
                  onPressed: () {

                  },
                ),
                const Image(image: AssetImage('assets/nike_logo.png'), width: 100),

                IconButton(
                  icon: const Icon(CupertinoIcons.shopping_cart, color: Colors.black, size: 30),
                  onPressed: () {},
                ),
              ],
            )
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(CupertinoIcons.search, color: Colors.black45, size: 25),
                          filled: true,
                          labelText: 'Search...',
                          hintText: 'New foots for example',
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text('Newly Arrived', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationGreenScreen()));
                  },
                  child: Stack(
                    children: [
                      Image.asset('assets/nike_image_foot.png'),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text('Air Force 1', style: TextStyle(
                              fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: const Text('249\$', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(
                              icon: const Icon(CupertinoIcons.plus_app_fill, color: Colors.white, size: 40),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationGreenScreen()));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationPinkScreen()));
                  },
                  child: Stack(
                    children: [
                      Image.asset('assets/nike_image_foor-2.png'),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text('Air Max 1', style: TextStyle(
                              fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: const Text('199\$', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(
                              icon: const Icon(CupertinoIcons.plus_app_fill, color: Colors.white, size: 40),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationPinkScreen()));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationGreenScreen()));
                  },
                  child: Stack(
                    children: [
                      Image.asset('assets/nike_image_foot.png'),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text('Air Force 1', style: TextStyle(
                              fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: const Text('249\$', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(
                              icon: const Icon(CupertinoIcons.plus_app_fill, color: Colors.white, size: 40),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationGreenScreen()));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationPinkScreen()));
                  },
                  child: Stack(
                    children: [
                      Image.asset('assets/nike_image_foor-2.png'),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text('Air Max 1', style: TextStyle(
                              fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: const Text('199\$', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
                          ),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: IconButton(
                              icon: const Icon(CupertinoIcons.plus_app_fill, color: Colors.white, size: 40),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoosingComplectationPinkScreen()));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
