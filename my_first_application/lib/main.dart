import 'package:flutter/material.dart'; 

// void main(){
  
//   runApp(MyApp());

// }

void main() => runApp(MyApp()); 

//first widget to run in file
class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context)  {
    return MaterialApp(home: Text('Hello'),); 
  }
}