import 'package:game_snakes_ladders/consts/snakes_ladders.dart';
import 'package:game_snakes_ladders/widgets/game_alerts.dart';
import 'package:mobx/mobx.dart';
part 'snakes-ladders.g.dart';

class SnakesLadders = _SnakesLaddersBase with _$SnakesLadders;

abstract class _SnakesLaddersBase with Store {
  GameAlerts alertsGameDialogs = new GameAlerts();

  @observable
  int _currentPlayer = 1;

  @observable
  int _currentDiceOne = 1;

  @observable
  int _currentDiceTwo = 2;

  @observable
  int _totalPlayerTwo = 1;

  @observable
  int _totalPlayerOne = 1;

  @computed
  int get totalPlayerOne => _totalPlayerOne;

  @computed
  int get totalPlayerTwo => _totalPlayerTwo;

  @computed
  int get currentPlayer => _currentPlayer;

  @computed
  int get currentDiceOne => _currentDiceOne;

  @computed
  int get currentDiceTwo => _currentDiceTwo;

  @action
  play(diceOne, diceTwo, context) {
    _currentDiceOne = diceOne;
    _currentDiceTwo = diceTwo;

    if (_currentPlayer == 1) {
      var total = _totalPlayerOne + diceOne + diceTwo;

      if (total > 100)
        alertsGameDialogs.dialogRulesWin(context, _currentPlayer, total);
      _totalPlayerOne = total > 100 ? _totalPlayerOne : total;

      var element = SnakesLaddersConst.snakesLadders
          .where((element) => element['position'] == _totalPlayerOne);
      if (element.isNotEmpty)
        alertsGameDialogs.dialogRules(context, element, _currentPlayer);
      alertsGameDialogs.dialog(
          context, total, _currentPlayer, diceOne, diceTwo);
    }

    if (_currentPlayer == 2) {
      var total = _totalPlayerTwo + diceOne + diceTwo;

      if (total > 100)
        alertsGameDialogs.dialogRulesWin(context, _currentPlayer, total);
      _totalPlayerTwo = total > 100 ? _totalPlayerTwo : total;
      var element = SnakesLaddersConst.snakesLadders
          .where((element) => element['position'] == _totalPlayerTwo);
      if (element.isNotEmpty)
        alertsGameDialogs.dialogRules(context, element, _currentPlayer);
      alertsGameDialogs.dialog(
          context, total, _currentPlayer, diceOne, diceTwo);
    }

    if (_totalPlayerTwo == 100 || _totalPlayerOne == 100) {
      GameAlerts.dialogWin(context, _currentPlayer);
    }

    if (diceOne != diceTwo) _currentPlayer = _currentPlayer == 1 ? 2 : 1;
  }

  @action
  restartPlayers() {
    _totalPlayerOne = 1;
    _totalPlayerTwo = 1;
  }

  @action
  setPlayers(player, value) {
    player == 1 ? _totalPlayerOne = value : _totalPlayerTwo = value;
  }
}
