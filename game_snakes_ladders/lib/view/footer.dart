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
          height: 140,
          decoration: BoxDecoration(
              color: Color(0xff0B4F6C),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, -10),
                    blurRadius: 35,
                    color: Colors.black)
              ],
              border: Border.all(color: Colors.black, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(0))),
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
