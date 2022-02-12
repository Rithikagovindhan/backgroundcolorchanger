import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )); //materialapp
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  //Color bgColor = Colors.grey;

  List colors=[
    Colors.amber,
    Colors.orange,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.black38,
    Colors.blueGrey,
    Colors.cyan,
    Colors.teal,
    Colors.amberAccent,
    Colors.primaries
  ];
  Random random =  Random();
  int index= 0;
  void changeIndex(){
    setState(()=>index=random.nextInt(12));
  }
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: colors[index],

        appBar: AppBar(
          title: Text('Background color changer'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => changeIndex(),
                child: Text('Color changer'),

              ),
            ],
          ),
        )));
  }
}