import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/view/footer.dart';
import 'package:game_snakes_ladders/widgets/game_app_bar.dart';
import 'package:game_snakes_ladders/widgets/game_board.dart';

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
      backgroundColor: Color(0xff0153B50),
      appBar: AppBar(
        shape: RoundedRectangleBorder(),
        elevation: 5,
        toolbarHeight: MediaQuery.of(context).size.height * .2,
        backgroundColor: Colors.transparent,
        title: GameAppBar(),
      ),
      body: GameBoard(snakesLaddersStore: _snakesLaddersStore),
      bottomNavigationBar: ClipRRect(
        child: BottomAppBar(
            color: Colors.transparent,
            child: Footer(
              snakeLaddersStore: _snakesLaddersStore,
            )),
      ),
    );
  }
}
