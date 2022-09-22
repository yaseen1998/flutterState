import 'package:flutter/material.dart';
import 'package:myapppp/models/UrlModels.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('hi discver page'),
            bottom: TabBar(
              tabs: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.laptop)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.window)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.door_back_door)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Image.network(
                  'https://cdn.shopify.com/s/files/1/0024/9803/5810/products/592812-Product-0-I-637913113382406310.jpg?v=1655944856'),
              const Text('hello2'),
              Column(children: [
                UrlModels(
                  myfunction: Facebook_Function,
                myPlatFormIcon: Icons.facebook,
                myPlatFormSub: 'join us',
                myPlatFormtitlle: 'facebook',
              ),
                UrlModels(
                  myfunction: Instagram_Function,
                myPlatFormIcon: Ionicons.logo_instagram,
                myPlatFormSub: 'join us',
                myPlatFormtitlle: 'instegram',
              ),

              ],)
              
              
            ],
          )),
    );
  }
}
