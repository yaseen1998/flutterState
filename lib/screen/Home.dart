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
            actions: [
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Discover();
                        }),
                      );
                    },
                    icon: const Icon(Icons.ac_unit),
                    label: const Text('discover')),
              )
            ],
            title: Row(
                children: const [Text('Home page'), const Icon(Icons.home)]),
          ),
          body: Center(
              child: Row(
            children: const [Text('Hello '), const Icon(Icons.sim_card)],
          )),
        ));
  }
}
