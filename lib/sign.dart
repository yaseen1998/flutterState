import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:myapppp/firestore.dart';
import 'package:myapppp/login.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                var login = FirebaseAuth.instance;
                UserCredential userCredential =
                    await login.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text);
                await storage.write(
                    key: 'token', value: userCredential.user?.refreshToken);
                // ignore: use_build_context_synchronously
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Firestore()));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(e.toString()),
                ));
              }
            },
            child: const Text('Sign in')),
            Divider(height: 25),
            TextButton(
              onPressed:(){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              
              },
              child: const Text('Sign up'),
            )
      ]),
    );
  }
}
