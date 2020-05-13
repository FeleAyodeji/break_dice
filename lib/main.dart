import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade700,
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
  int leftNumber = 1;
  int rightNumber = 2;

  void changeDiceFace(){
    setState(() {
      leftNumber = Random().nextInt(6) + 1; // 1-6
      rightNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("images/dice$leftNumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("images/dice$rightNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
