import 'package:flutter/material.dart';
import 'package:myapppp/models/UrlModels.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapppp/screen/CodingScreen.dart';

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
            backgroundColor: Color.fromARGB(255, 115, 4, 128),
            title: Text('hi discver page'),
            bottom: TabBar(
              tabs: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Ionicons.code_slash_outline)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Ionicons.logo_codepen)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.door_back_door)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(children: [
                CodingScreen(
                  SubTitle: 'Easily create and share your code with the world.',
                  MyIcon: Ionicons.add,
                  Title: 'Python',
                  ImageSrc:
                      'https://www.trio.dev/hubfs/Imported_Blog_Media/python_logo.jpg',
                ),
                CodingScreen(
                  SubTitle: 'Best for web development',
                  MyIcon: Ionicons.add,
                  Title: 'JS',
                  ImageSrc:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/800px-Unofficial_JavaScript_logo_2.svg.png',
                ),
                CodingScreen(
                  SubTitle: 'Best for Mobile development',
                  MyIcon: Ionicons.add,
                  Title: 'Dart',
                  ImageSrc:
                      'https://swansoftwaresolutions.com/wp-content/uploads/2020/02/08.20.20-What-is-Dart-and-how-is-it-used-1024x576.jpg',
                ),
              ]),
              ListView(children: [
                CodingScreen(
                  SubTitle: 'framework for building beautiful',
                  MyIcon: Ionicons.add,
                  Title: 'Django',
                  ImageSrc:
                      'https://s3.eu-west-2.amazonaws.com/uploads.3alampro.com/2018/April/MxpiKAG5czIDmXbv9xMbTX6qY8qIFKuNiK2RbxSL.png',
                ),
                CodingScreen(
                  SubTitle: 'framework for web development',
                  MyIcon: Ionicons.add,
                  Title: 'React',
                  ImageSrc: 'https://reactjs.org/logo-og.png',
                ),
                CodingScreen(
                  SubTitle: 'framework for Mobile development',
                  MyIcon: Ionicons.add,
                  Title: 'Flutter',
                  ImageSrc:
                      'https://www.mindinventory.com/blog/wp-content/uploads/2022/05/flutter-3.png',
                ),
              ]),
              Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      UrlModels(
                        myfunction: Python_Function,
                        myPlatFormIcon: Ionicons.logo_python,
                        myPlatFormSub: 'website For install in python',
                        myPlatFormtitlle: 'Python Pip',
                      ),
                      UrlModels(
                        myfunction: Npm_Function,
                        myPlatFormIcon: Ionicons.logo_javascript,
                        myPlatFormSub: 'website For install in JS',
                        myPlatFormtitlle: 'JS Npm',
                      ),
                      UrlModels(
                        myfunction: Dart_Function,
                        myPlatFormIcon: Icons.flutter_dash_sharp,
                        myPlatFormSub: 'website For install in Dart',
                        myPlatFormtitlle: 'Dart Pub',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton.icon(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.home), label: const Text('Go To Home Page'))
                    ],
                  ))
            ],
          )),
    );
  }
}
