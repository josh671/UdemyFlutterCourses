import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  String currentQuestion; 

  Question(this.currentQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Text(currentQuestion, 
                  style: TextStyle(fontSize: 28, 
                  fontStyle: FontStyle.italic), 
                  textAlign: TextAlign.center,),

    );
  }
}