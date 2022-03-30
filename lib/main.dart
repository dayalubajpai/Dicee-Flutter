import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('DICEE')),
          backgroundColor: Colors.red,
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
  int leftDice = 1;
  int leftDicee = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDice = Random().nextInt(6) +1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDicee = Random().nextInt(6) +1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDicee.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

