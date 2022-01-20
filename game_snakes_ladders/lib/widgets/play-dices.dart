import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/consts/dices.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/widgets/dice-item.dart';
import 'package:game_snakes_ladders/widgets/utils.dart';
import 'package:spring/spring.dart';

class PlayDices extends StatefulWidget {
  PlayDices({Key key, this.snakeLaddersStore, this.dicesOne, this.dicesTwo})
      : super(key: key);
  SnakesLadders snakeLaddersStore;
  int dicesOne;
  int dicesTwo;

  @override
  State<PlayDices> createState() => _PlayDicesState();
}

class _PlayDicesState extends State<PlayDices> {
  int total;

  @override
  Widget build(BuildContext context) {
    final random = new Random();

    return BottomAppBar(
      color: const Color(0xff02B2D42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DiceItem(
            dice: DicesConst.dice(
              widget.dicesOne.toString(),
            ),
            springController: SpringController(initialAnim: Motion.play),
          ),
          ElevatedButton(
            onPressed: () {
              if (widget.snakeLaddersStore.totalPlayerOne == 100 ||
                  widget.snakeLaddersStore.totalPlayerTwo == 100) {
                Utils.dialogFinish(context);
              } else {
                var diceOne = 1 + random.nextInt(5);
                var diceTwo = 1 + random.nextInt(5);
                widget.snakeLaddersStore.play(diceOne, diceTwo, context);
                total == widget.dicesOne + diceTwo;
              }
            },
            child: Text('JOGAR'),
          ),
          DiceItem(
            dice: DicesConst.dice(
              widget.dicesTwo.toString(),
            ),
            springController: SpringController(initialAnim: Motion.play),
          ),
        ],
      ),
    );
  }
}
