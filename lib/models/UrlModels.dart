import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri Instagram_url = Uri.parse('https://www.instagram.com');

Future<void> Facebook_Function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> Instagram_Function() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
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
          title: Text('$myPlatFormtitlle'),
          subtitle: Text('$myPlatFormSub'),
          leading: Icon(myPlatFormIcon),
        ),
      ),
    );
  }
}
