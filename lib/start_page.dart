import 'package:flutter/material.dart';
import 'package:quiz_app/necessary.dart';



class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [
            ImageSet('assets/images/quiz-logo.png',imagesize,const Color.fromARGB(202, 252, 252, 252)),
            SetSize(0,40),
            SetText('Lets Learn Flutter the fun',textsize),
            SetSize(0,30),
            OutlinedButton.icon(
              onPressed:startQuiz,
              style: OutlinedButton.styleFrom(
              ),
              icon: const Icon(Icons.arrow_right_alt,color: Colors.white,),
              label: SetText("Start Quiz",20),
            ),
          ],
        ),
      );
  }
}