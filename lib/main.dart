import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sanchari/constants.dart';
import 'package:sanchari/profile.dart';
import 'package:sanchari/search.dart';

import 'package:sanchari/home.dart';
import 'package:sanchari/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sanchari',
        theme: kLightTheme,
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/sanchari.jpeg'),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sanchari",
                  style: TextStyle(
                      fontSize: 25, letterSpacing: 2, color: Colors.white),
                )
              ],
            ),
            splashIconSize: 140,
            nextScreen: const MyHomePage(title: "Sanchari"),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: const Color(0xffE3002C)));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Notifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xffE3002C),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              icon: const Icon(Icons.person)),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffE3002C),
        onTap: _onItemTapped,
      ),
    );
  }
}
