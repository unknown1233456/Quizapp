class quizQuestions {
   quizQuestions(this.question,this.answers,);
   String question;
   final List<String>answers;

 List shuffleanswers(){
      final shuffledList=List.of(answers);
      shuffledList.shuffle();
      return shuffledList;
   }
}