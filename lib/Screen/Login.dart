import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapppp/Screen/BackgrounColor.dart';
import 'package:myapppp/Screen/SignUp.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                // ignore: use_build_context_synchronously
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const BackgroundColor()));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(e.toString()),
                ));
              }
            },
            child: const Text('Sign in')),
            const Divider(height: 25),
            TextButton(
              onPressed:(){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignUp()));
              
              },
              child: const Text('Sign up'),
            )
      ]),
    );
  }
}