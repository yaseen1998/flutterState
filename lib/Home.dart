import 'package:flutter/material.dart';
import 'package:myapppp/Models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/68/47/17/360_F_368471784_MiPQ7BcDQDLlErjgLaNfiNpbYJtDksaw.jpg"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(Icons.people),
                              label: Text("Go to Quiz page")),
                        ],
                      )),
                    );
                  });
            },
            child: SizedBox(
              height: 250,
              width: 200,
              child: Text(
                "Do you think you are good in Programming press me if yes:)",
                style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 130, 5, 114)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}