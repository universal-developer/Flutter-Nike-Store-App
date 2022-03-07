import 'package:flutter/material.dart';

class ChoosingComplectationScreen extends StatefulWidget {
  const ChoosingComplectationScreen({Key? key}) : super(key: key);

  @override
  _ChoosingComplectationScreenState createState() => _ChoosingComplectationScreenState();
}

class _ChoosingComplectationScreenState extends State<ChoosingComplectationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
