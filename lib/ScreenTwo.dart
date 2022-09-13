import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Color newcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
        appBar: AppBar(),
        body: Container(
          color: newcolor,
          child: ListView(
            // parent listview
            physics: BouncingScrollPhysics(), // this is for decoration
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.89ee28915ec60f85282cc057d363ef15?rik=MIaZ1cf%2fK8kYLg&pid=ImgRaw&r=0")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star),
                      Icon(Icons.star_border),
                      Icon(Icons.star_half),
                    ],
                  ),
                  // insider list view (the child one )
                ],
              ),

              const Divider(
                color: Colors.black,
                thickness: 2,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.89ee28915ec60f85282cc057d363ef15?rik=MIaZ1cf%2fK8kYLg&pid=ImgRaw&r=0")),
                  ),
                  Column(
                    children: const [
                      Icon(Icons.stop),
                      Icon(Icons.stop_circle),
                      Icon(Icons.stop_circle_sharp),
                    ],
                  ),
                ],
              ),

              const Divider(
                color: Colors.black,
                thickness: 2,
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.stop_sharp),
                      Icon(Icons.storage),
                      Icon(Icons.store_mall_directory),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.89ee28915ec60f85282cc057d363ef15?rik=MIaZ1cf%2fK8kYLg&pid=ImgRaw&r=0")),
                  ),
                ],
              ),

              const Divider(
                color: Colors.black,
                thickness: 2,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.shop),
                      Icon(Icons.shop_two),
                      Icon(Icons.share_arrival_time),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.89ee28915ec60f85282cc057d363ef15?rik=MIaZ1cf%2fK8kYLg&pid=ImgRaw&r=0")),
                  ),
                ],
              ),

              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              // insider list view (the child one )
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () { setState(() { newcolor = Colors.red; }); }, color: Colors.red, icon: const Icon(Icons.circle)),
                  IconButton(onPressed: () { setState(() { newcolor = Colors.blue; }); }, color: Colors.blue, icon: const Icon(Icons.circle)),
                  IconButton(onPressed: () { setState(() { newcolor = Colors.orange; }); }, color: Colors.orange, icon: const Icon(Icons.circle)),
                  IconButton(onPressed: () { setState(() { newcolor = Colors.green; }); }, color: Colors.green, icon: const Icon(Icons.circle)),
                  IconButton(onPressed: () { setState(() { newcolor = Colors.white; }); }, color: Colors.white, icon: const Icon(Icons.circle)),

                ],
              ),
            ],
          ),
        ),
      
    );
  }
}