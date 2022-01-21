import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/view/footer.dart';
import 'package:game_snakes_ladders/view/game_app_bar.dart';
import 'package:game_snakes_ladders/view/game_board.dart';

import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SnakesLadders _snakesLaddersStore;

  @override
  void initState() {
    super.initState();
    _snakesLaddersStore = GetIt.instance<SnakesLadders>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff02B2D42),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        elevation: 5,
        toolbarHeight: MediaQuery.of(context).size.height * .2,
        backgroundColor: Colors.transparent,
        title: GameAppBar(),
      ),
      body: GameBoard(snakesLaddersStore: _snakesLaddersStore),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Footer(
            snakeLaddersStore: _snakesLaddersStore,
          )),
    );
  }
}
