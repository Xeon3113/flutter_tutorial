import 'package:flutter/material.dart';
import 'package:hello_world/animate_opacity.dart';
import 'package:hello_world/animated_container.dart';
import 'package:hello_world/drawer.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/orientaion_builder.dart';
import 'package:hello_world/snack_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat Application",
      initialRoute: MainPage.id,
      routes: {
        MainPage.id: (context) => MainPage(),
        MyAnimatedContainer.id: (context) => MyAnimatedContainer(),
        MyAnimatedOpacity.id: (context) => MyAnimatedOpacity(),
        MyDrawer.id: (context) => MyDrawer(),
        MySnackBar.id: (context) => MySnackBar(),
        MyOrientationBuilder.id: (context) => MyOrientationBuilder(),
        LoginPage.id: (context) => LoginPage(),
      },
      theme: new ThemeData(
        // primarySwatch: Colors.red,

        // Add the line below to get horizontal sliding transitions for routes.
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  static const String id = "MainPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Flutter Tutorial'),
        ),
      ),
      body: ListView(
        // List 간격
        itemExtent: 50.0,
        children: <Widget>[
          ListTile(
            title: Text('LoginPage'),
            onTap: () => Navigator.of(context).pushNamed(
              LoginPage.id,
            ),
          ),
          ListTile(
            title: Text('MyAnimatedContainer'),
            onTap: () => Navigator.of(context).pushNamed(
              MyAnimatedContainer.id,
            ),
          ),
          ListTile(
            title: Text('MyAnimatedOpacity'),
            onTap: () => Navigator.of(context).pushNamed(
              MyAnimatedOpacity.id,
            ),
          ),
          ListTile(
            title: Text('MyDrawer'),
            onTap: () => Navigator.of(context).pushNamed(
              MyDrawer.id,
            ),
          ),
          ListTile(
            title: Text('MySnackBar'),
            onTap: () => Navigator.of(context).pushNamed(
              MySnackBar.id,
            ),
          ),
          ListTile(
            title: Text('MyOrientationBuilder'),
            onTap: () => Navigator.of(context).pushNamed(
              MyOrientationBuilder.id,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
