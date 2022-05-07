import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  get _busNumberController => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _busNumberController,
              autofocus: false,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  hintText: "Bus Number",
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: InputBorder.none),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.directions_bus_rounded,
                size: 40.0,
              ),
              title: Text("KA - 13 F-3456"),
              subtitle: Text("Hassan - Sakleshpur"),
              trailing: IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.directions),
                color: Colors.blue,
                iconSize: 40.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bus_rounded,
                size: 40.0,
              ),
              title: Text("KA - 13 F-3456"),
              subtitle: Text("Hassan - Sakleshpur"),
              trailing: IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.directions),
                color: Colors.blue,
                iconSize: 40.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bus_rounded,
                size: 40.0,
              ),
              title: Text("KA - 13 F-3456"),
              subtitle: Text("Hassan - Sakleshpur"),
              trailing: IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.directions),
                color: Colors.blue,
                iconSize: 40.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bus_rounded,
                size: 40.0,
              ),
              title: Text("KA - 13 F-3456"),
              subtitle: Text("Hassan - Sakleshpur"),
              trailing: IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.directions),
                color: Colors.blue,
                iconSize: 40.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bus_rounded,
                size: 40.0,
              ),
              title: Text("KA - 13 F-3456"),
              subtitle: Text("Hassan - Sakleshpur"),
              trailing: IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.directions),
                color: Colors.blue,
                iconSize: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
