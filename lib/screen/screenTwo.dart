import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second page"),
      backgroundColor: Color.fromARGB(255, 40, 255, 58),),
      body:   Center(
        child:Padding(
          padding: EdgeInsets.all(70),
      child : Column(children: const[
        TextField(
        decoration: InputDecoration(
          suffixIcon: Icon( Icons.search),
          suffix: Text('Search'),
          contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,
          // hintText:'search here',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),gapPadding: 50),
          labelText: 'Search',
          // prefix: Text('Name:'),
          // prefixIcon: Icon(Icons.person),
        ),
        cursorWidth: 2,
        cursorColor: Colors.blue,
        cursorRadius: Radius.circular(70),
      ),
      ]),
      ),
      ),
    );
  }
}