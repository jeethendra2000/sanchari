import 'package:flutter/material.dart';
import 'package:sanchari/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // @override
  // void initState() {
  //   super.initState();
  //   navigateToHome();
  // }

  // navigateToHome() async {
  //   await Future.delayed(const Duration(milliseconds: 3000), () {});
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => const MyHomePage(title: "sanchari")));
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
            width: 120.0,
            height: 120.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/sanchari_logo.png')))),
        new Text(
          "Sanchari",
          style: TextStyle(fontSize: 25, letterSpacing: 2, color: Colors.white),
        )
      ],
    ));
  }
}
