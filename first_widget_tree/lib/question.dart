import 'package:flutter/material.dart'; 
//custom stateless widget with first styling
class Question extends StatelessWidget {
   final String questionText; 

   Question(this.questionText);


  @override
  Widget build(BuildContext context) {
    //positional arguement of text widget
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:Text(questionText, 
                style: TextStyle(fontSize: 28),
                                textAlign: TextAlign.center,
            ),
    );
  }
}