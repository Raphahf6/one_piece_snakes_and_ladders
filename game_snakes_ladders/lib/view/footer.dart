import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/widgets/play-dices.dart';

class Footer extends StatelessWidget {
  const Footer({Key key, this.snakeLaddersStore}) : super(key: key);
  final SnakesLadders snakeLaddersStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      name: 'PlayDices',
      builder: (BuildContext context) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xffD62246),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -5),
                  blurRadius: 10,
                  color: Color(0xffD62246))
            ],
            border: Border.all(color: Color(0xffD62246), width: 3),
          ),
          child: PlayDices(
            snakeLaddersStore: snakeLaddersStore,
            dicesOne: snakeLaddersStore.currentDiceOne,
            dicesTwo: snakeLaddersStore.currentDiceTwo,
          ),
        );
      },
    );
  }
}
