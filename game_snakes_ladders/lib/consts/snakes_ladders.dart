import 'package:demoji/demoji.dart';

int index = 100;

class SnakesLaddersConst {
  static List snakesLadders = [
    {
      'position': 08,
      'positionFuture': 01,
      'title': 'Ops... ' + Demoji.snake,
      'message':
          ' terá que voltar a casa 01, você caiu em uma casa onde está localizada uma cobra.'
    },
    {
      'position': 17,
      'positionFuture': 10,
      'title': 'Que azar... ' + Demoji.snake,
      'message':
          'Você precisa voltar até a casa 10, você caiu em uma casa onde está localizada uma cobra e precisa voltar 07 casas'
    },
    {
      'position': 87,
      'positionFuture': 71,
      'title': 'Bahhh... ' + Demoji.snake,
      'message':
          ' terá que voltar a casa 71, você caiu em uma casa onde está localizada a cabeça da cobra.'
    },
    {
      'position': 18,
      'positionFuture': 45,
      'title': 'Que sorte... ' + Demoji.fire,
      'message':
          ' irá para a casa 45, você caiu em uma casa onde está localizada a base da escada.'
    },
    {
      'position': 95,
      'positionFuture': 98,
      'title': 'Boa... ' + Demoji.four_leaf_clover,
      'message':
          ' irá para a casa 98, você caiu em uma casa onde está localizada a base da escada.'
    },
    {
      'position': 57,
      'positionFuture': 76,
      'title': 'É teu dia... ' + Demoji.star2,
      'message':
          ' irá para a casa 76, você caiu em uma casa onde está localizada a base da escada.'
    }
  ];
}
