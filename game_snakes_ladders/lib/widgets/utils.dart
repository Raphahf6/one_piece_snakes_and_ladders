import 'package:demoji/demoji.dart';
import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:get_it/get_it.dart';

class Utils {
  SnakesLadders snakesLaddersStore;

  Utils({SnakesLadders snakesLaddersStore}) {
    this.snakesLaddersStore = snakesLaddersStore;
  }

  static dialogWin(context, player) {
    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              'Parabéns, você ganhou ' + Demoji.star2,
              style: TextStyle(color: Colors.black54),
            ),
            content: Text(
              'Jogador ' + player.toString() + ' é o vencedor!',
              style: TextStyle(color: Colors.black45),
            ),
            backgroundColor: Colors.orange[100],
            elevation: 10,
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                      },
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          );
        });
  }

  dialogRulesWin(context, player, total) {
    this.snakesLaddersStore = GetIt.instance<SnakesLadders>();
    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              'Você quase ganhou ' + Demoji.boom,
              style: TextStyle(color: Colors.black54),
            ),
            content: Text(
              'Jogador ' +
                  player.toString() +
                  ' precisa tirar exatamente o número de casas restantes, você irá retornar o número de casas que sobraram!',
              style: TextStyle(color: Colors.black45),
            ),
            backgroundColor: Colors.orange[100],
            elevation: 10,
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                        snakesLaddersStore.setPlayers(
                            player, (100 - (total - 100)))
                      },
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          );
        });
  }

  static dialogFinish(context) {
    return showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              'Jogo já acabou...' + Demoji.warning,
              style: TextStyle(color: Colors.black54),
            ),
            content: Text(
              'Comece um novo jogo.',
              style: TextStyle(color: Colors.black45),
            ),
            backgroundColor: Colors.orange[100],
            elevation: 10,
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                      },
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          );
        });
  }

  dialogRules(context, element, currentPlayer) {
    this.snakesLaddersStore = GetIt.instance<SnakesLadders>();
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              element.first['title'],
              style: TextStyle(color: Colors.black54),
            ),
            content: Text(
              'Jogador ' + currentPlayer.toString() + element.first['message'],
              style: TextStyle(color: Colors.black45),
            ),
            backgroundColor: Colors.orange[100],
            elevation: 10,
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                        this.snakesLaddersStore.setPlayers(
                            currentPlayer, element.first['positionFuture'])
                      },
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          );
        });
  }

  dialogRestart(context) {
    this.snakesLaddersStore = GetIt.instance<SnakesLadders>();
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              'Deseja iniciar um novo jogo?',
              style: TextStyle(color: Colors.black54),
            ),
            backgroundColor: Colors.orange[100],
            elevation: 10,
            actions: [
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                      },
                  child: Text(
                    "Não",
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pop(),
                        this.snakesLaddersStore.restartPlayers()
                      },
                  child: Text(
                    "Sim",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          );
        });
  }

  dialog(context, element, currentPlayer, dice1, dice2) {
    this.snakesLaddersStore = GetIt.instance<SnakesLadders>();
    int dice = dice1 + dice2;
    if (dice1 == dice2) {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) {
            return AlertDialog(
              backgroundColor: Colors.orange[100],
              elevation: 10,
              title: Text(
                'Numero sorteado: $dice',
                style: TextStyle(color: Colors.black54),
              ),
              content: Text(
                'Jogador: $currentPlayer indo para a casa $element \n\n PARABENS !! \n\n Jogador: $currentPlayer ganhou uma nova jogada por tirar dados iguals',
                style: TextStyle(color: Colors.black54),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:
                        Text('Entendi', style: TextStyle(color: Colors.black)))
              ],
            );
          });
    }
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: Colors.orange[100],
            elevation: 10,
            title: Text(
              'Numero sorteado: $dice',
              style: TextStyle(color: Colors.black),
            ),
            content: Text('Jogador: $currentPlayer indo para a casa $element'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Entendi', style: TextStyle(color: Colors.black)))
            ],
          );
        });
  }
}
