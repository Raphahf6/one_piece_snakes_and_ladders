import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/widgets/utils.dart';

class Player extends StatelessWidget {
  const Player({Key key, this.numPlayer}) : super(key: key);
  final String numPlayer;

  @override
  Widget build(BuildContext context) {
    Utils utils = new Utils();
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 50,
            child: Center(
                child: Text(
              'Jogador ${numPlayer}',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange[300]),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.orange[100])]),
          ),
          ElevatedButton(
            onPressed: () {
              utils.dialogRestart(context);
            },
            child: Icon(Icons.autorenew),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
          ),
        ],
      ),
    );
  }
}
