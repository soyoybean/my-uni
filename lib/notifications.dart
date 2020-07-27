import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _Notifications createState() => _Notifications();
}

class _Notifications extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Notifications')),
        body: Center(
          child: Text(
            'This is a new screen',
            style: TextStyle(fontSize: 24.0),
          ),
        ));
  }
}
