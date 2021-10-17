import 'package:flutter/material.dart'; 
import './questions.dart';

void main() => runApp(MyApp()); 


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState(); 
  }
} 

class MyAppState extends State<MyApp>{
  var questionIndex = 0; 

  void answerQuestions(){
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
  Widget build(BuildContext context){
    //create questions 
    var questions = ["what's your name?", 
                      "What's your age?", 
                      "what's your favorite pet?"]; 
    //creates scaffolding for widgets to be created 
    //create within (); 
    return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('My Questionare!'), 
            ),
          body: Column(
            children: [
             Question(
               questions[questionIndex],
             ),
               RaisedButton(
                 child: Text('answer 1'), 
                 onPressed: answerQuestions,
               ),
               RaisedButton(
                 child: Text("answer 2"), 
                 onPressed: ()=>print("selected number 2"),
               ),
               RaisedButton(
                 child: Text('button 3'), 
                 onPressed: answerQuestions,
               ),
            ],
          ),
          ),

    );

  }
}