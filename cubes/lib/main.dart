import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubes Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Center(
            child: Text('Cubes Play'),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 200, 22, 22),
        body: const Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void ChengeCubesFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      //print('Левая кнопка меняеться = $leftDiceNumber');
      //print('Правая кнопка меняеться = $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                ChengeCubesFace();
              },
              child: Image(
                image: AssetImage('images/kubik$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ChengeCubesFace();
                });
              },
              child: Image(
                image: AssetImage('images/kubik$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
