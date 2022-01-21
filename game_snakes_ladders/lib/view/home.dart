import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/view/footer.dart';
import 'package:game_snakes_ladders/view/game_app_bar.dart';

import 'package:game_snakes_ladders/widgets/play.dart';
import 'package:game_snakes_ladders/widgets/player.dart';
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
    List enel = [8, 15, 16];
    return Scaffold(
      backgroundColor: Color(0xff02B2D42),
      appBar: AppBar(
        toolbarHeight: 230,
        backgroundColor: Colors.transparent,
        title: GameAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Observer(
            name: "Player",
            builder: (BuildContext context) {
              return Player(
                numPlayer: _snakesLaddersStore.currentPlayer.toString(),
              );
            },
          ),
          Expanded(
            child: AnimationLimiter(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(children: [
                  Observer(
                    builder: (BuildContext context) {
                      return GridView.builder(
                          padding: EdgeInsets.all(1),
                          addAutomaticKeepAlives: true,
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 04),
                          itemCount: 100,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            index = index + 1;
                            Color color;

                            if (index % 3 == 0) {
                              // ignore: use_full_hex_values_for_flutter_colors
                              color = const Color(0xff002B9CA);
                            } else if (index % 5 == 3) {
                              //verde
                              color = const Color(0xff093d64b);
                            } else if (index % 4 == 3) {
                              //rosa
                              color = const Color(0xff0f0718c);
                            } else if (index % 10 == 2) {
                              //amarelo
                              color = const Color(0xff0edf000);
                            } else if (index % 10 == 4) {
                              // branco
                              color = const Color(0xff0F7F7F9);
                            } else if (index % 10 == 5) {
                              //marrom
                              color = const Color(0xff7C6354);
                            } else {
                              //vermelho
                              color = const Color(0xffAD343E);
                            }
                            return Container(
                              child: AnimationConfiguration.staggeredGrid(
                                position: index,
                                duration: const Duration(milliseconds: 375),
                                columnCount: 1,
                                child: ScaleAnimation(
                                  child: Observer(
                                    builder: (BuildContext context) {
                                      return Stack(
                                        children: [
                                          Container(
                                            width: 125,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                color: color,
                                                border: Border.all(
                                                    color: Colors.black38,
                                                    width: 10)),
                                            child: Center(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    index == 1
                                                        ? Center(
                                                            child: Image.asset(
                                                              'assets/img/arrow.png',
                                                              height: 100,
                                                              width: 100,
                                                            ),
                                                          )
                                                        : index % 15 == 4
                                                            ? Center(
                                                                child:
                                                                    Image.asset(
                                                                  'assets/img/enel.png',
                                                                  height: 100,
                                                                  width: 100,
                                                                ),
                                                              )

                                                            //se a cor for marrom
                                                            : index % 15 == 7
                                                                ? Image.asset(
                                                                    'assets/img/nami.png')
                                                                : Text(
                                                                    index
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        fontStyle:
                                                                            FontStyle
                                                                                .normal,
                                                                        fontSize:
                                                                            30,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                  ]),
                                            ),
                                          ),
                                          Play(
                                            totalPlayerOne: _snakesLaddersStore
                                                .totalPlayerOne,
                                            totalPlayerTwo: _snakesLaddersStore
                                                .totalPlayerTwo,
                                            currentPlayer: _snakesLaddersStore
                                                .currentPlayer,
                                            index: index,
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Footer(
        snakeLaddersStore: _snakesLaddersStore,
      ),
    );
  }
}
