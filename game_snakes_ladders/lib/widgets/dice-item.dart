import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class DiceItem extends StatelessWidget {
  const DiceItem({
    Key key,
    this.dice,
    this.springController
  }) : super(key: key);
  final String dice;
  final SpringController springController;

  @override
  Widget build(BuildContext context) {
    return Spring.rotate(
                springController: springController,
          alignment: Alignment.center,
          startAngle: 0,
          endAngle: 720,
          animDuration: Duration(milliseconds: 300),
          animStatus: (AnimStatus status) {
          },
        child: Image.asset(
      dice,
      height: 100,
      width: 100,
    ));
  }
}
