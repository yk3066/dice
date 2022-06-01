import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
              child: Text('Dice'),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(child: DicePage()),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1, rightdicenumber=1;
  void rand()
  {

    leftdicenumber = Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rand();
                    });
                  },
                  child: Image.asset('images/dice$leftdicenumber.png')
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                   setState(() {
                  rand();
                   });
                  },
                  child: Image.asset('images/dice$rightdicenumber.png')),
            )),
      ],
    );
  }
  }


