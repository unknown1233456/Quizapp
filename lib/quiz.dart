import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activestate;
  List<String>setAnswer=[];

@override
  void initState() {
   activestate=StartPage(currentstate);
    super.initState();

  }

  void currentstate(){
    setState(() {
     activestate=QuestionScreen(choosedAnswers);
    });
  }
  void choosedAnswers(answer){
  setAnswer.add(answer);
  setState(() {
     if(setAnswer.length==questions.length){
    activestate=Result();
  }
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