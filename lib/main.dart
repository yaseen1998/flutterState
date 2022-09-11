import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List image = ['mobile/11.jpeg', 'mobile/12.jpeg', 'mobile/13.jpeg', 'mobile/14 mini.jpeg','mobile/14 max.jpeg','mobile/11.jpeg', 'mobile/12.jpeg', 'mobile/13.jpeg', 'mobile/14 mini.jpeg','mobile/14 max.jpeg'];
  List Name = ['Iphone 11', 'Iphone 12', 'Iphone 13', 'Iphone 14 mini','Iphone 14 max','Iphone 11', 'Iphone 12', 'Iphone 13', 'Iphone 14 mini','Iphone 14 max'];
  List Price = ['1000', '2000', '3000', '4000','5000','1000', '2000', '3000', '4000','5000'];
  List Colorss = [Colors.red, Colors.blue, Colors.green, Colors.yellow,Colors.pink,Colors.red, Colors.blue, Colors.green, Colors.yellow,Colors.pink];
  List Iconss = [Icons.favorite, Icons.favorite, Icons.favorite, Icons.favorite,Icons.favorite,Icons.favorite, Icons.favorite, Icons.favorite, Icons.favorite,Icons.favorite];
  List<bool> _selected = List.generate(10, (i) => false);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          // color: Colors.red,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  // padding: EdgeInsets.all(10),
                  // color: Colors.red,
                  child: ListTile(
                    dense: true,
                    // selected: index % 2 == 0 ? true : false,
                    selectedColor: Colors.red,
                    textColor: Color.fromARGB(255, 5, 84, 148),
                    contentPadding: EdgeInsets.all(20),
                    enabled: true,
                    focusColor: Colors.yellow,
                    mouseCursor: SystemMouseCursors.click,
                    hoverColor: Colors.purple,
                    enableFeedback: true,
                    tileColor: _selected[index] ? Color.fromARGB(255, 106, 103, 103) : null,
                    onTap: () =>
                        setState(() => _selected[index] = !_selected[index]),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Colorss[index],
                          width: 2,
                          strokeAlign: StrokeAlign.outside),
                    ),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -1),
                    isThreeLine: true,
                    autofocus: false,
                    subtitle: Text(
                      'Price: \$${Price[index]}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Iconss[index],
                      color: Colorss[index],
                      size: 30,
                    ),
                    trailing: Image(image:AssetImage(image[index])),

                    title: Text(Name[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
