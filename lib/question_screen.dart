import 'package:flutter/material.dart';
import 'package:quiz_app/Elevatedbutton.dart';
import 'package:quiz_app/questions.dart';


class QuestionScreen extends StatefulWidget {
 const  QuestionScreen(this.onChooseFunction,{super.key});

 final void Function(String answer) onChooseFunction;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
   int currentQuestionIndex=0;
   

   void nextQuestion(answer){
    widget.onChooseFunction(answer);
    setState(() {
       currentQuestionIndex++;
    });
   
   }
  @override
  Widget build(BuildContext context) {
    var currentQuestion=questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,style:TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            ...currentQuestion.shuffleanswers().map((answer){
              return ElevatedCustomButton(text: answer, onTap: (){
                nextQuestion(answer);
              });
            })
        
          ],
        ),
      ),
    );
  }
}
