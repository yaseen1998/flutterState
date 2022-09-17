import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
    String caseone = 'economy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.7,
            image: NetworkImage(
                'https://t3.ftcdn.net/jpg/01/89/36/12/360_F_189361287_KDE7S9O7GLGrGqXgvtII1dy0dZM1DCwN.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Text('Where are you go',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue.shade800)),
               RadioListTile(
                secondary: Icon(Icons.business),
                groupValue: caseone,
                subtitle: const Text('this is the first case'),
                title: const Text('business case',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                value: 'Jordan',
                onChanged: (value) {
                  setState(() {
                    caseone = value.toString();
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              RadioListTile(
                secondary: Icon(Icons.business),
                title: const Text('USA',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                subtitle: const Text('this is the second case'),
                value: 'economy',
                groupValue: caseone,
                onChanged: (value) {
                  setState(() {
                    caseone = value.toString();
                  });
                },
              ),
        ]),
      ),

    );
  }
}
