import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  static const String id = "MyDrawer";
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 88.0,
              child: DrawerHeader(
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            ListTile(
              title: Text('item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My Drawer Example'),
      ),
      body: Center(
        child: Text('Drawer 예제'),
      ),
    );
  }
}
