import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:   Center(
            child:   Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
          Container(
            width: 120.0,
            height: 120.0,
            margin:  const EdgeInsets.symmetric(vertical: 20.0),
            decoration:   const BoxDecoration(
                shape: BoxShape.circle,
                image:   DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/sanchari.jpeg')))),
          const Text("Pranav", textScaleFactor: 1.5),
      ],
    )));
  }
}
