import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Puthon_url = Uri.parse('https://pypi.org/');
final Uri Npm_url = Uri.parse('https://www.npmjs.com/');
final Uri Dart_url = Uri.parse('https://pub.dev/');

Future<void> Python_Function() async {
  if (!await launchUrl(Puthon_url)) {
    throw 'Could not launch $Puthon_url';
  }
}

Future<void> Npm_Function() async {
  if (!await launchUrl(Npm_url)) {
    throw 'Could not launch $Npm_url';
  }
}
Future<void> Dart_Function() async {
  if (!await launchUrl(Dart_url)) {
    throw 'Could not launch $Dart_url';
  }
}

class UrlModels extends StatelessWidget {
  UrlModels(
      {required this.myPlatFormIcon,
      required this.myPlatFormSub,
      required this.myPlatFormtitlle,
      required this.myfunction
      });
  String? myPlatFormtitlle;
  String? myPlatFormSub;
  IconData? myPlatFormIcon;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
        child: ListTile(
          title: Text('$myPlatFormtitlle',style: TextStyle(fontSize: 30,color: Colors.amber,
          fontWeight: FontWeight.bold
          ),),
          subtitle: Text('$myPlatFormSub',style: TextStyle(fontSize: 20,color: Colors.grey),),
          leading: Icon(myPlatFormIcon,color: Color.fromARGB(255, 175, 47, 38),size: 25,),
        ),
      ),
    );
  }
}
