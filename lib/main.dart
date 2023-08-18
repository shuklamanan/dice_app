import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Dice Roller',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var activediceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRollNumber = Random().nextInt(6) + 1;
    setState(() {
      activediceImage = 'assets/images/dice-$diceRollNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange.shade200,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: const Text(
            'Dice Roller',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 50,
                letterSpacing: 6),
          ),
          backgroundColor: Colors.deepOrange.shade200,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                activediceImage,
                width: 300,
              ),
              ElevatedButton(
                  onPressed: rollDice,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Text(
                    'ROLL DICE',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
