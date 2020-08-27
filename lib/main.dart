import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red.shade500,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1 ;

  void changeDiceFace () {
    setState(() {
    leftDiceNumber =  Random().nextInt(6) + 1 ;
    rightDiceNumber =  Random().nextInt(6) + 1 ;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
                padding: EdgeInsets.all(25),
                onPressed: () {
               changeDiceFace();
                },
                // to add a variable in directory
                child: Image.asset('lib/assets/dice$leftDiceNumber.png')),
          ),
           Expanded(
            child: FlatButton(
                padding: EdgeInsets.all(25),
                onPressed: () {
               changeDiceFace();
                },
                // to add a variable in directory
                child: Image.asset('lib/assets/dice$leftDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
