import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChoosingComplectationGreenScreen extends StatefulWidget {
  const ChoosingComplectationGreenScreen({Key? key}) : super(key: key);

  @override
  _ChoosingComplectationGreenScreenState createState() => _ChoosingComplectationGreenScreenState();
}

class _ChoosingComplectationGreenScreenState extends State<ChoosingComplectationGreenScreen> {

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB2E140),
      appBar: AppBar(
        title: const Image(image: AssetImage('assets/nike_logo.png'), width: 100, color: Colors.white,),
        backgroundColor: const Color(0xffB2E140),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          const Image(image: AssetImage('assets/nike_for_choosing.png'), width: 500),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFFB2E140),
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: const Text('Air Force 1', style: TextStyle(
                          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold
                      ),)
                    ),

                   Container(
                     padding: const EdgeInsets.only(top: 27.5, left: 320),
                     child:  IconButton(
                       icon: const Icon(CupertinoIcons.heart, size: 40),
                       onPressed: () {},
                     ),
                   ),

                    Container(
                      padding: const EdgeInsets.only(top: 55, left: 20),
                      child: const Text('249\$', style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 25, color: Colors.black
                      ),)
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 100, left: 20, right: 50),
                      child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis diam, sit eget nisi a suspendisse. Vel ac non vitae dui fringilla sem donec aliquam. ', style: TextStyle(
                       fontWeight: FontWeight.w200
                      ),)
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 180, left: 20),
                      child: const Text('Choose Color', style: TextStyle(
                          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold
                      ),)
                    ),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 230, left: 20),
                         child:  Container(
                           width: 70,
                           height: 40,
                           decoration: BoxDecoration(
                             color: const Color(0xFFB2E140),
                             border: Border.all(
                               color: const Color(0xFFB2E140),
                               style: BorderStyle.solid,
                               width: 1.0,
                             ),
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(top: 230, left: 10),
                          child:  Container(
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                color: const Color(0xFFB2E140),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 230, left: 10),
                          child:  Container(
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: const Color(0xFFB2E140),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 230, left: 10),
                          child:  Container(
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              border: Border.all(
                                color: const Color(0xFFB2E140),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 290, left: 20, right: 20),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: ElevatedButton(

                            onPressed: () {},
                            child: Row(
                              children: [
                                const Icon(CupertinoIcons.cart_fill,
                                    color: Colors.white),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 85),
                                  child: const Text('Buy Right Now',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xffB2E140)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                    const BorderSide(color: Color(0xffB2E140)),
                                  ),
                                ))),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
