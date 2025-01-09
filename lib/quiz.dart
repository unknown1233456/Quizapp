import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activestate='StartState';

@override
  void initState() {
   
    super.initState();

  }

  void currentstate(){
    setState(() {
     activestate='QuestionState';
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.deepPurple,Color.fromARGB(255, 99, 47, 243)],
      )),
      child: activestate=='StartState'? StartPage(currentstate):QuestionScreen(),
    ),
      ),
    );
  }
}