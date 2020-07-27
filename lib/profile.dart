import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Soyon Kim')),
        body: Center(
          child: Text(
            'This is a new screen',
            style: TextStyle(fontSize: 24.0),
          ),
        ));
  }
}
