import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({super.key});

  @override
  State<BackgroundColor> createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {
  CollectionReference colorUser =
      FirebaseFirestore.instance.collection('user');
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        FirebaseFirestore.instance
            .collection('user')
            .doc(user.uid)
            .get()
            .then((value) {
          setState(() {
            isAdmin = value.data()!['isAdmin'];
            UserName = colors[value.data()!['userName']];
          });
        });
      }
    });
  }

  bool isAdmin = false;
  var UserName;
  var colors = {
    // 'red': Colors.red,
    'blue': Colors.blue,
    'green': Colors.green,
    'yellow': Colors.yellow,
    'pink': Colors.pink,
    'purple': Colors.purple,
    'orange': Colors.orange,
    'black': Colors.black,
    'white': Colors.white,
    'grey': Colors.grey,
    'brown': Colors.brown,
    'cyan': Colors.cyan,
    'teal': Colors.teal,
    'lime': Colors.lime,
    'amber': Colors.amber,
    'indigo': Colors.indigo,
    'deepOrange': Colors.deepOrange,
    'deepPurple': Colors.deepPurple,
    // 'mixColor': Colors.primaries[Random().nextInt(Colors.primaries.length)],
    // 'multiColor': Colors.accents[Random().nextInt(Colors.accents.length)],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         
         decoration: UserName == null
              ? BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.primaries[Random().nextInt(Colors.primaries.length)],
                        Colors.accents[Random().nextInt(Colors.accents.length)]
                      ]),
                )
              : BoxDecoration(
                color: UserName,
                ),                  
                
          child: Column(
            children: [
              Text(
                isAdmin ? 'Admin' : 'User',
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
              RadioListTile(
                title: const Text('user',
                style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
                  value: false,
                  groupValue: isAdmin,
                  onChanged: (value) {
                    colorUser.doc(FirebaseAuth.instance.currentUser!.uid)
                        .update({'isAdmin': false});

                    setState(() {
                      isAdmin = false;
                    });
                  }),
              RadioListTile(
                  title: const Text('admin'
                  ,style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  value: true,
                  groupValue: isAdmin,
                  onChanged: (value) {
                    colorUser.doc(FirebaseAuth.instance.currentUser!.uid)
                        .update({'isAdmin': true});
                    setState(() {
                      isAdmin = true;
                    });
                  }),
            ],
          ),),
    );
  }
}
