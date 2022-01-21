import 'package:flutter/material.dart';

class AvatarPlayer extends StatelessWidget {
  AvatarPlayer({
    Key key,
    this.player,
    this.size,
  }) : super(key: key);
  final int player;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 85,
          width: 85,
          child: player == 1
              ? Container(
                  child: Image.asset('assets/img/zoro.png'),
                )
              : Container(
                  child: Image.asset('assets/img/luffy.png'),
                ),
        ),
      ),
    );
  }
}
