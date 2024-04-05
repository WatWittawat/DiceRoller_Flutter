import 'package:basicflutter/dice_roller.dart';
import 'package:flutter/material.dart';

const myTopLeft = Alignment.topLeft;
const myBottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key); ทำได้ 2 แบบ
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple(
      {super.key,
      this.colors = const [Colors.deepPurple, Colors.indigoAccent]});

  const GradientContainer.red({super.key, color})
      : colors = color ?? const [Colors.red, Colors.deepOrange];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: myTopLeft,
        end: myBottomRight,
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
