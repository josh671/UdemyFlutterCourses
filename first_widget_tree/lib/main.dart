//my_first_application continuation
import 'dart:ffi';

import 'package:flutter/material.dart';
//import question widget from qeustion file
import './question.dart'; 
import './answer.dart';
void main() => runApp(myApp());

//Home widget
//myApp is parent widget of Question and Answer widgets
class myApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
      return _MyAppState(); 
    }

}

class _MyAppState extends State<myApp>{
  var questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1; 
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favorite color",
      "what's your favorite pet?",
      "what's your name?"
    ];
    //returned scaffold instead of Text
    //scaffold gives base page
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facebook'),
        ),
        body: Column(
          children: [
           Question(
             questions[questionIndex],
           ),
           //replace question buttons with answer buttons
            Answer(_answerQuestions), 
            Answer(_answerQuestions), 
            Answer(_answerQuestions), 
            
          ],
        ),
      ),
    );
  }
}
