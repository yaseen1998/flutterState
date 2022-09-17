import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List Mytime = ['1 Person', '2 Person', '3 Person', '4 Person'];
  List Index = [0, 1, 2, 3];
  String caseone = 'economy';
  bool checkone = false;
  bool checktwo = false;
  bool checkthree = false;
  String _selectedTime = '1 Person';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.5,
              image: NetworkImage(
                  'https://3j0grh44ocny4a6kcn288izx-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/beach-resorts.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Text(
                'please enter your information',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'How many Persons',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                dropdownColor: Colors.amber,
                value: _selectedTime,
                items: Index.map((valueItem) {
                  return DropdownMenuItem(
                    value: Mytime[valueItem],
                    child: Text(
                      Mytime[valueItem],
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    alignment: valueItem % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedTime = newValue.toString();
                  });
                },
              ),
              const Text('please Select your Case',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              RadioListTile(
                secondary: Icon(Icons.business),
                groupValue: caseone,
                subtitle: const Text('this is the first case'),
                title: const Text('business case',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                value: 'business',
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
                title: const Text('economy case',
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
              const Text('please Select your Case',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10,),
              CheckboxListTile(
                title: const Text('this is the first case'),
                value: checkone,
                onChanged: (value) {
                  setState(() {
                    checkone = value!;
                  });
                },
                
              ),
              CheckboxListTile(
                title: const Text('this is the second case'),
                value: checktwo,
                onChanged: (value) {
                  setState(() {
                    checktwo = value!;
                  });
                },
                
              ),
              CheckboxListTile(
                title: const Text('this is the third case'),
                value: checkthree,
                onChanged: (value) {
                  setState(() {
                    checkthree = value!;
                  });
                },
                
              ),
              
            ],
          ),
        ));
  }
}
