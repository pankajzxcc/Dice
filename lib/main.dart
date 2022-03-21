import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Dicepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int dice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("DiceApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click On Dice ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
            SizedBox(height: 40,),
            Container(
              height: 200,
              width: 200,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    dice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$dice.png'),
                ),
              ),
            ),

          ],
        )

      )
      );
  }
}
