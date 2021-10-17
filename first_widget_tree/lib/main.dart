//my_first_application continuation
import 'package:flutter/material.dart';
//import question widget from qeustion file
import './question.dart'; 

void main() => runApp(myApp());

//Home widget

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
            RaisedButton(
              child: Text('answer 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
                child: Text('answer 2'),
                onPressed: () {
                  print("Answer 2 chosen!");
                }),
            RaisedButton(
                child: Text('answer 3'),
                onPressed: () {
                  print("Answer 3 chosen!");
                }),
          ],
        ),
      ),
    );
  }
}
