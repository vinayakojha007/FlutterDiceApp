import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    var no = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$no.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(29),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 28,
                )),
            child: Text('Roll Dice')),
      ],
    );
  }
}
