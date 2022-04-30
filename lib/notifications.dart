// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(title: Text("Notoifaction 1")),
              color: Colors.green,
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Card(
              child: ListTile(title: Text("Notoifaction 3")),
              color: Color.fromARGB(255, 80, 167, 54),
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Card(
              child: ListTile(title: Text("Notoifaction 3")),
              color: Colors.green,
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Card(
              child: ListTile(title: Text("Notoifaction 4")),
              color: Colors.green,
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Card(
              child: ListTile(title: Text("Notoifaction 4")),
              color: Colors.green,
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Card(
              child: ListTile(title: Text("Notoifaction 5")),
              color: Colors.green,
              elevation: 8,
              shadowColor: Colors.grey,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
          ],
        ),
      ),
    );
  }
}
