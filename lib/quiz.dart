import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activestate;

@override
  void initState() {
   
    super.initState();
     activestate=StartPage(currentstate);
  }

  void currentstate(){
    setState(() {
      activestate=QuestionScreen();
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
      child: activestate,
    ),
      ),
    );
  }
}