import 'package:flutter/material.dart'; 

class Answer extends StatelessWidget {
 
//create a constructor that takes in answerQuestion() 
//create private variable that stores a Function
final VoidCallback selectHandler;

Answer(this.selectHandler); 


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      child: RaisedButton(
        color: Colors.blue, 
        child:Text('Answer 1'), 
        onPressed: selectHandler, 
      ),
    );
  }
}