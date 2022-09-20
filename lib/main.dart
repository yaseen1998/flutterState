import 'package:flutter/material.dart';
import 'package:myapppp/screen/screenOne.dart';
import 'package:myapppp/screen/screenTwo.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"), actions: [
        ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => screenOne()));
            },
            icon: Icon(Icons.login),
            label: Text("go to login Pages")),
            ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()));
            },
            icon: Icon(Icons.search),
            label: Text("go to Search Pages")),
      ]),
      body: Container(),
    );
  }
}
