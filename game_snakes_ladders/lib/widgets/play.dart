import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/avatar-player.dart';

class Play extends StatelessWidget {
  const Play(
      {Key key,
      this.index,
      this.totalPlayerOne,
      this.totalPlayerTwo,
      this.currentPlayer})
      : super(key: key);
  final int index, totalPlayerOne, totalPlayerTwo, currentPlayer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (totalPlayerOne == (index))
          AvatarPlayer(
            player: 1,
            size: totalPlayerOne == totalPlayerTwo ? 8 : 3,
          ),
        if (totalPlayerTwo == (index))
          AvatarPlayer(
            player: 2,
            size: 3,
          )
      ],
    );
  }
}
