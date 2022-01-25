import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/game_alerts.dart';

class Player extends StatelessWidget {
  const Player({Key key, this.numPlayer}) : super(key: key);
  final String numPlayer;

  @override
  Widget build(BuildContext context) {
    GameAlerts utils = new GameAlerts();
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .3,
            height: MediaQuery.of(context).size.width * .2 / 2,
            child: Center(
                child: Text(
              'Jogador ${numPlayer}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white70),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(5, 20)),
                boxShadow: [BoxShadow(color: Color(0xffD62246))]),
          ),
          ElevatedButton(
            onPressed: () {
              utils.dialogRestart(context);
            },
            child: Icon(
              Icons.autorenew,
              color: Colors.white70,
              size: 25,
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff0D62246),
                elevation: 30,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            // ButtonStyle( backgroundColor: MaterialStateProperty.all(Color(0xffD62246))),
          ),
        ],
      ),
    );
  }
}
