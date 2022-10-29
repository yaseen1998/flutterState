import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapppp/Screen/BackgrounColor.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  CollectionReference colorUser =
      FirebaseFirestore.instance.collection('user');
  @override
  Future<void> addUser(id) {
    // Call the user's CollectionReference to add a new user
    return colorUser
        .doc(id)
        .set({
          'email': emailController.text, // John Doe
          'userName': userController.text,
          'isAdmin': false,
        })
        .then((value) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BackgroundColor()),
            ))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const Center(
          child: Text('welcom your app'),
        ),
        const Divider(height: 25),
        const Text("UserName"),
        TextField(
          controller: userController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'UserName',
          ),
        ),
        const Text("Email"),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),
        const Text("Password"),
        TextField(
          controller: passController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        const Divider(
          height: 25,
        ),
        TextButton(
            onPressed: () async {
              try {
                var auth = FirebaseAuth.instance;
                UserCredential userCredential =
                    await auth.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passController.text);
                addUser(userCredential.user?.uid);
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(e.toString()),
                ));
              }
            },
            child: const Text('Sign Up')),
      ]),
    );
  }
}
