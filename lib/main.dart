import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapppp/adddata.dart';
import 'package:myapppp/firestore.dart';
import 'package:myapppp/login.dart';
import 'package:myapppp/screen/LoginWithGmail.dart';
import 'package:myapppp/screen/login_screen.dart';
import 'package:myapppp/sign.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

// Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MaterialApp(home: MyApp()));
//...
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return Login_screen();
  }
}
