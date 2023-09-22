import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); //eksekusi konstruktor function dari dice roller state yang mana udah disediain sama dart
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      //print('cekk');
      currentDiceRoll =
          Random().nextInt(6) + 1; // 0 <= x < 6 terus jadi 1 <= x < 7
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: const Color.fromARGB(233, 226, 64, 5),
            textStyle: const TextStyle(fontSize: 28)),
        child: const Text('Roll Dice'), //rekomen const text taruh di last
      )
    ]);
  }
}
