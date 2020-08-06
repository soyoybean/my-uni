import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  Position _currentPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentPosition != null)
              Text("LAT: ${_currentPosition.latitude}, "
                  "LNG: ${_currentPosition.longitude}"),
            FlatButton(
              child: Text("Get Location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
            FlatButton(
              child: Text("Disconnect access to location"),
              onPressed: () {
                //_getCurrentLocation();
              },
            ),
          ],
        ),
      ),
    );
  }

  /** GETCURRENTLOCATION
   * retrieve current location at best accuracy.
   */
  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }
}
