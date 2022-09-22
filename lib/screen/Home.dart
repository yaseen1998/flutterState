import 'package:flutter/material.dart';
import 'package:myapppp/screen/Discover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 29, 11, 121),
            actions: [
              Center(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Discover();
                        }),
                      );
                    },
                    icon: const Icon(Icons.menu_open),
                    ),
              )
            ],
            title: Row(
                children: const [Text('Home page'), const Icon(Icons.home)]),
          ),
          body: Center(
              child: Row(
            children: const [Text('You can click In menu in top right',style: TextStyle(fontSize: 20),)],
          )),
        ));
  }
}
