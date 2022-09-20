import 'package:flutter/material.dart';

class screenOne extends StatefulWidget {
  const screenOne({super.key});

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second page"),
      backgroundColor: Colors.amber.shade400,),
      body:   Center(
        child:Padding(
          padding: EdgeInsets.all(70),
      child : Column(children: const[
        TextField(
        decoration: InputDecoration(
          suffixIcon: Icon( Icons.email),
          suffix: Text('Email'),
          contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,
          // hintText:'search here',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),gapPadding: 50),
          labelText: 'Email',
          // prefix: Text('Name:'),
          // prefixIcon: Icon(Icons.person),
        ),
        cursorWidth: 2,
        cursorColor: Colors.blue,
        cursorRadius: Radius.circular(70),
      ),
      SizedBox(height: 20,),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon( Icons.lock),
          suffix: Text('Password'),
          contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),gapPadding: 50),
          labelText: 'Password',
          
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