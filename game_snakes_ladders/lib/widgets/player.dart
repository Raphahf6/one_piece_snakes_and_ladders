import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/utils.dart';

class Player extends StatelessWidget {
  const Player({Key key, this.numPlayer}) : super(key: key);
  final String numPlayer;

  @override
  Widget build(BuildContext context) {
    Utils utils = new Utils();
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 50,
            child: Center(
                child: Text(
              'Jogador ${numPlayer}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white70),
            )),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD62246)),
                borderRadius: BorderRadius.circular(10),
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
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffD62246))),
          ),
        ],
      ),
    );
  }
}
