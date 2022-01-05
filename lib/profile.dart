import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
            child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Container(
            width: 120.0,
            height: 120.0,
            margin:  EdgeInsets.symmetric(vertical: 20.0),
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/jeethendra.jpg')))),
        new Text("Pinku", textScaleFactor: 1.5),
      ],
    )));
  }
}
