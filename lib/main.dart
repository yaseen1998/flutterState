import 'package:flutter/material.dart';
import 'package:myapppp/ScreenOne.dart';
import 'package:myapppp/ScreenTwo.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://thumbs.dreamstime.com/b/blue-sky-clouds-natural-background-92873892.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 500,
                  height: 100,
                  color: Colors.amber.shade300,
                  child: const Text(
                    'Select Courses',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )),
            const SizedBox(height: 200),
            ElevatedButton.icon(
              onPressed: () {
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()));
            
              },
              icon: const Icon(Icons.face_retouching_natural_sharp),
              label: const Text('you prefernce page'),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 92, 88, 88), 
                backgroundColor: const Color.fromARGB(255, 102, 173, 231),
                shadowColor: Colors.yellow,
                elevation: 50,
                fixedSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenOne()));
            
              },
              icon: const Icon(Icons.favorite_border),
              label: const Text('fill you informations'),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 213, 10, 10),
                 backgroundColor: const Color.fromARGB(255, 98, 71, 175),
                shadowColor: Colors.green,
                elevation: 50,
                fixedSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
