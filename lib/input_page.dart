import 'package:flutter/material.dart';
import 'location.dart';
import 'location_package.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String rakim = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RAKIM BULUCU'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'RAKIM: ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                rakim,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          FlatButton(
            color: Colors.white,
            onPressed: () async {
              //Location location = Location();
              //await location.getCurrentLocation();
              LocationPackage location = LocationPackage();
              await location.getLocation();
              setState(() {
                //rakim = location.latitude.toString();
              });
            },
            child: Text(
              'BUL',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
