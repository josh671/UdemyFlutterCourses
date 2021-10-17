//my_first_application continuation
import 'package:flutter/material.dart';

void main() => runApp(myApp());

//Home widget

class myApp extends StatelessWidget {
  var questionIndex = 0;
  //adding function
  void answerQuestions() {
    questionIndex = questionIndex + 1;
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
            Text(
              questions[questionIndex],
              ),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestions,
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
