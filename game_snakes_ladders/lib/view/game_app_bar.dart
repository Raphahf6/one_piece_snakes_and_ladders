import 'package:flutter/material.dart';

class GameAppBar extends StatelessWidget {
  const GameAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, -10),
                          blurRadius: 35,
                          color: Colors.black)
                    ],
                    border: Border.all(color: Colors.black38, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red[200],
                  ),
                  child: Container(
                    child: Center(
                      child: Image.asset(
                        'assets/img/zoro.png',
                        width: MediaQuery.of(context).size.width * .1,
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height / 7,
                    child: Center(
                      child: Text(
                        'VS',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.height * .1 / 1.1,
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, -10),
                          blurRadius: 35,
                          color: Colors.black)
                    ],
                    border: Border.all(color: Colors.black38, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red[200],
                  ),
                  child: Container(
                    child: Center(
                        child: Image.asset(
                      'assets/img/luffy.png',
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.height * .1,
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Zoro'), Text(''), Text('Luffy')]),
            ),
          ],
        ),
      ],
    );
  }
}
