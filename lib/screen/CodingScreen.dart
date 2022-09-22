import 'package:flutter/material.dart';

class CodingScreen extends StatelessWidget {
  CodingScreen(
      {required this.MyIcon, required this.Title, required this.ImageSrc,this.SubTitle});
  IconData? MyIcon;
  String? Title;
  String? ImageSrc;
  String? SubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.network('$ImageSrc'),
        Row(
          children: [
            Icon(MyIcon,color: Colors.red,),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  '$Title',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('$SubTitle', style: TextStyle(fontSize: 15,color: Colors.grey)),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 0,
          color: Colors.black,
        ),
      ]),
    );
  }
}
