import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:myapppp/firestore.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    var storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const Center(
          child: Text('welcom your app'),
        ),
        const Divider(height: 25),
        const Text("email"),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'email',
          ),
        ),
        const Text("password"),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'password',
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
                        password: passwordController.text);
                    await storage.write(key:'token',value: userCredential.user?.refreshToken);
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Firestore()));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(e.toString()),
                ));
              }
            },
            child: const Text('signup'))
      ]),
    );
  }
}
