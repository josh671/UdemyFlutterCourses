 import 'package:flutter/material.dart';
 import 'package:practice_app/question.dart'; 
 import './answer.dart';

 void main()  =>  runApp(myApp()); 



class myApp extends StatefulWidget {
 

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
//create variables and functions 
  var questionIndex = 0; 

  void _answerQuestions(){
    //set state so that it changes question when questionIndex changes
    setState(() {
      if(questionIndex == 2){
        questionIndex = 0;
      }else{
       questionIndex = questionIndex + 1; 
      }
    });
      
      print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what is your pets name?", 
      "what is your pets species?", 
      "how old is your pet?"
    ];

    //Widget return statement to run build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FaceBook Questions'), 
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex], 
            ),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
          ],
        ),
      ), 
    );
  }
}