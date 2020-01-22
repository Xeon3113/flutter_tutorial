import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatefulWidget {
  static const String id = "MyOrientationBuilder";
  @override
  _MyOrientationBuilderState createState() => _MyOrientationBuilderState();
}

class _MyOrientationBuilderState extends State<MyOrientationBuilder> {
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrientationBuilder'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.landscape ? 5 : 3,
            children: List.generate(
              50,
              (position) {
                return Center(
                  child: Text('item $position'),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
