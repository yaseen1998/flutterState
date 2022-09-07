import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: ListView(
            // parent listview
            physics: BouncingScrollPhysics(), // this is for decoration
            children: [
              Container(
                child: Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.89ee28915ec60f85282cc057d363ef15?rik=MIaZ1cf%2fK8kYLg&pid=ImgRaw&r=0")),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.shop),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Buy Now",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // insider list view (the child one )
              Container(
                height: 400,
                width: 900,
                child: ListView( scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                      child: Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.3e0708db7cae1cdf64c2e9f7d9d95f55?rik=Q0e9KB%2fK6Ov0yg&pid=ImgRaw&r=0")),
                    ),
                    Container(
                      child: Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.1573992639cb9bc56a7bd4b7c9423f45?rik=gMta6wR5rt9DLw&pid=ImgRaw&r=0")),
                    )
                  ],
                ),
              ),
              Container(
                child: Image(
                    image: NetworkImage(
                        "https://1.bp.blogspot.com/-n3YUsCOh3WI/VVmjQm2RCwI/AAAAAAAACBY/oBqTcuLmF1o/s1600/337171-dell-inspiron-14r-5437%2B(1).jpg")),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.shop),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Buy Now",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Image(
                    image: NetworkImage(
                        "https://1.bp.blogspot.com/-n3YUsCOh3WI/VVmjQm2RCwI/AAAAAAAACBY/oBqTcuLmF1o/s1600/337171-dell-inspiron-14r-5437%2B(1).jpg")),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.shop),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Buy Now",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}