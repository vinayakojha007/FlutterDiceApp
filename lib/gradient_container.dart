import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

import 'dice_roller.dart';

const startALignment = Alignment.topLeft;
const endALignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
