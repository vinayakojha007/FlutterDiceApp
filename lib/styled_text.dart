import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 40.0, color: Color.fromARGB(255, 90, 57, 238)),
    );
  }
}
