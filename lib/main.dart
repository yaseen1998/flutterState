import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),
  initialRoute: 'my home page',
  // routes:{
  //   '/a':(context)=>PageA(),
  //   '/b':(context)=>PageB(),
  //   '/c':(context)=>PageC(),
  // 'my home page':(context)=>MyHomePage(),
  // },
  
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List StudentName = [
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: Center(
          child: ListView(
            children: [
              CircleAvatar(
                radius: 30,
              ),
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Item 1"),
                subtitle: Text('sub'),
                leading: Card(
                  color: Colors.blue,
                  child: Icon(Icons.home),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Container(
        child: Text("End Drawer"),
        color: Colors.red,
        height: 400,
        width: 200,
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onHorizontalDragStart: ((details) => print('right')),
            onHorizontalDragEnd: ((details)=>print('left')),
            child: Container(
              height: 50,
              color: Colors.white,
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Card(
              shadowColor: Color.fromARGB(255, 165, 1, 194),
              elevation: 20,
              child: Container(
                height: 100,
                color: Colors.blue,
                child:Text(StudentName[index]),
              ));
        },
      ),
    );
  }
}
