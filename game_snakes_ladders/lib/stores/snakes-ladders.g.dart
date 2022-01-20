// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snakes-ladders.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SnakesLadders on _SnakesLaddersBase, Store {
  Computed<int> _$totalPlayerOneComputed;

  @override
  int get totalPlayerOne =>
      (_$totalPlayerOneComputed ??= Computed<int>(() => super.totalPlayerOne,
              name: '_SnakesLaddersBase.totalPlayerOne'))
          .value;
  Computed<int> _$totalPlayerTwoComputed;

  @override
  int get totalPlayerTwo =>
      (_$totalPlayerTwoComputed ??= Computed<int>(() => super.totalPlayerTwo,
              name: '_SnakesLaddersBase.totalPlayerTwo'))
          .value;
  Computed<int> _$currentPlayerComputed;

  @override
  int get currentPlayer =>
      (_$currentPlayerComputed ??= Computed<int>(() => super.currentPlayer,
              name: '_SnakesLaddersBase.currentPlayer'))
          .value;
  Computed<int> _$currentDiceOneComputed;

  @override
  int get currentDiceOne =>
      (_$currentDiceOneComputed ??= Computed<int>(() => super.currentDiceOne,
              name: '_SnakesLaddersBase.currentDiceOne'))
          .value;
  Computed<int> _$currentDiceTwoComputed;

  @override
  int get currentDiceTwo =>
      (_$currentDiceTwoComputed ??= Computed<int>(() => super.currentDiceTwo,
              name: '_SnakesLaddersBase.currentDiceTwo'))
          .value;

  final _$_currentPlayerAtom = Atom(name: '_SnakesLaddersBase._currentPlayer');

  @override
  int get _currentPlayer {
    _$_currentPlayerAtom.reportRead();
    return super._currentPlayer;
  }

  @override
  set _currentPlayer(int value) {
    _$_currentPlayerAtom.reportWrite(value, super._currentPlayer, () {
      super._currentPlayer = value;
    });
  }

  final _$_currentDiceOneAtom =
      Atom(name: '_SnakesLaddersBase._currentDiceOne');

  @override
  int get _currentDiceOne {
    _$_currentDiceOneAtom.reportRead();
    return super._currentDiceOne;
  }

  @override
  set _currentDiceOne(int value) {
    _$_currentDiceOneAtom.reportWrite(value, super._currentDiceOne, () {
      super._currentDiceOne = value;
    });
  }

  final _$_currentDiceTwoAtom =
      Atom(name: '_SnakesLaddersBase._currentDiceTwo');

  @override
  int get _currentDiceTwo {
    _$_currentDiceTwoAtom.reportRead();
    return super._currentDiceTwo;
  }

  @override
  set _currentDiceTwo(int value) {
    _$_currentDiceTwoAtom.reportWrite(value, super._currentDiceTwo, () {
      super._currentDiceTwo = value;
    });
  }

  final _$_totalPlayerTwoAtom =
      Atom(name: '_SnakesLaddersBase._totalPlayerTwo');

  @override
  int get _totalPlayerTwo {
    _$_totalPlayerTwoAtom.reportRead();
    return super._totalPlayerTwo;
  }

  @override
  set _totalPlayerTwo(int value) {
    _$_totalPlayerTwoAtom.reportWrite(value, super._totalPlayerTwo, () {
      super._totalPlayerTwo = value;
    });
  }

  final _$_totalPlayerOneAtom =
      Atom(name: '_SnakesLaddersBase._totalPlayerOne');

  @override
  int get _totalPlayerOne {
    _$_totalPlayerOneAtom.reportRead();
    return super._totalPlayerOne;
  }

  @override
  set _totalPlayerOne(int value) {
    _$_totalPlayerOneAtom.reportWrite(value, super._totalPlayerOne, () {
      super._totalPlayerOne = value;
    });
  }

  final _$_SnakesLaddersBaseActionController =
      ActionController(name: '_SnakesLaddersBase');

  @override
  dynamic play(dynamic diceOne, dynamic diceTwo, dynamic context) {
    final _$actionInfo = _$_SnakesLaddersBaseActionController.startAction(
        name: '_SnakesLaddersBase.play');
    try {
      return super.play(diceOne, diceTwo, context);
    } finally {
      _$_SnakesLaddersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic restartPlayers() {
    final _$actionInfo = _$_SnakesLaddersBaseActionController.startAction(
        name: '_SnakesLaddersBase.restartPlayers');
    try {
      return super.restartPlayers();
    } finally {
      _$_SnakesLaddersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlayers(dynamic player, dynamic value) {
    final _$actionInfo = _$_SnakesLaddersBaseActionController.startAction(
        name: '_SnakesLaddersBase.setPlayers');
    try {
      return super.setPlayers(player, value);
    } finally {
      _$_SnakesLaddersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalPlayerOne: ${totalPlayerOne},
totalPlayerTwo: ${totalPlayerTwo},
currentPlayer: ${currentPlayer},
currentDiceOne: ${currentDiceOne},
currentDiceTwo: ${currentDiceTwo}
    ''';
  }
}
