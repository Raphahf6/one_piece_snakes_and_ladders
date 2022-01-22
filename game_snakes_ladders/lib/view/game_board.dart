import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/widgets/play.dart';
import 'package:game_snakes_ladders/widgets/player.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({
    Key key,
    @required SnakesLadders snakesLaddersStore,
  })  : _snakesLaddersStore = snakesLaddersStore,
        super(key: key);

  final SnakesLadders _snakesLaddersStore;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      padding: EdgeInsets.all(0),
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
                            duration: const Duration(milliseconds: 800),
                            columnCount: 1,
                            child: ScaleAnimation(
                              child: Observer(
                                builder: (BuildContext context) {
                                  return Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.2),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              border: Border.all(
                                                  color: Colors.black38,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .1 /
                                                      5),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  index == 100
                                                      ? Center(
                                                          child: Image.asset(
                                                              'assets/img/sunny.png',
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  .1,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .1 /
                                                                  1.5),
                                                        )
                                                      : index == 1
                                                          ? Center(
                                                              child: Image.asset(
                                                                  'assets/img/arrow.png',
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .1,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .1 /
                                                                      1.5),
                                                            )
                                                          : index % 15 == 4
                                                              ? Center(
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/img/enel.png',
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .2,
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .1 /
                                                                        1.2,
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
                                                                          decoration: TextDecoration
                                                                              .underline,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontStyle: FontStyle
                                                                              .normal,
                                                                          fontSize: MediaQuery.of(context).size.width *
                                                                              .1 /
                                                                              2,
                                                                          color: Colors
                                                                              .black
                                                                              .withOpacity(0.7)),
                                                                    )
                                                ]),
                                          ),
                                        ),
                                      ),
                                      Play(
                                        totalPlayerOne:
                                            _snakesLaddersStore.totalPlayerOne,
                                        totalPlayerTwo:
                                            _snakesLaddersStore.totalPlayerTwo,
                                        currentPlayer:
                                            _snakesLaddersStore.currentPlayer,
                                        index: index,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
