
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  Question({Key? key, required this.QuestionText,required this.QuestionAnswer,required this.CorrectAnswer}) : super(key: key);
  String QuestionText;
  List QuestionAnswer;
  String CorrectAnswer;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var selectValue = null;
  @override
  Widget build(BuildContext context)  {
    return 
    Container(
      child: Column(
        children: [
           Text(
            widget.QuestionText,
            style: TextStyle(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
          const Divider(height: 35),
          for (var i = 0; i < widget.QuestionAnswer.length; i++)
            RadioListTile(
              title: Text(widget.QuestionAnswer[i]),
              value: widget.QuestionAnswer[i],
              groupValue: selectValue,
              onChanged: (value) {
                setState(() {
                  selectValue = value;
                });
                widget.CorrectAnswer == value
                    ? showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Correct"),
                            ))
                    : showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Wrong"),
                            ));
              },
            )
        ],
      ),
    );
  }
}
