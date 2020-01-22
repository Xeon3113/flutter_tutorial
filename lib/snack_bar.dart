import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  static const String id = "MySnackBar";
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: RaisedButton(
            child: Text('스낵바'),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('메일이 삭제되었습니다'),
                action: SnackBarAction(
                  label: '취소',
                  onPressed: () {},
                ),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}
