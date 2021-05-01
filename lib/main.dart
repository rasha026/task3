
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(

      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

 class  Home extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("task3"),
          backgroundColor: Colors.cyan,
        ),


        body:
        Dice(),


    );
  }}
  class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
  }

  class _DiceState extends State<Dice> {
  int no = 1;
  void update() {
  setState(() {
  no = Random().nextInt(6) + 1;
  });
  }

  @override
  Widget build(BuildContext context) {
  return Center(


  child: FlatButton(
  child: Image.asset('images/$no.png'),
  onPressed: () {
  update();
  },
  ),

  );
  }
  }