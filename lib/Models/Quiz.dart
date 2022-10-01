import 'package:flutter/material.dart';
import 'package:myapppp/Models/QuestionModels.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text("Quiz App"),
          ),
          body: TabBarView(children: [
             Question(
          QuestionText: "select easyest programming language",
          QuestionAnswer: ["dart", "java", "python", "c++", "c#",'JS'],
          CorrectAnswer: "python",
        ),
         Question(
          QuestionText: "select pest frameWork language for front end",
          QuestionAnswer: ["flutter", "react", "angular", "django","Vue"],
          CorrectAnswer: "react",
        ),
          Question(
          QuestionText: "most popular programming language",
          QuestionAnswer: ["JS", "java", "python", "c++"],
          CorrectAnswer: "JS",
          ),
          Question(
          QuestionText: "most popular programming framework",
          QuestionAnswer: ["Node", "React", "Vue", "jQuery","Django"],
          CorrectAnswer: "Node",
          ),
          Question(
          QuestionText: " Best Web Frameworks for Web App",
          QuestionAnswer: ["ASP", "Ruby", "Flask", "Express"],
          CorrectAnswer: "ASP",
          ),
          
          ]),
        ));
  }
}