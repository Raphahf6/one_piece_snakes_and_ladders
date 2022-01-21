import 'package:flutter/material.dart';

class GameAppBar extends StatelessWidget {
  const GameAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, -10),
                        blurRadius: 35,
                        color: Colors.black)
                  ],
                  border: Border.all(color: Colors.black38, width: 10),
                  color: Colors.red[200],
                ),
                child: Container(
                  child: Center(
                    child: Image.asset('assets/img/zoro.png'),
                  ),
                ),
              ),
              Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, -10),
                          blurRadius: 35,
                          color: Colors.black)
                    ],
                    border: Border.all(color: Colors.black38, width: 10),
                    color: Colors.red[200],
                  ),
                  child: Center(
                    child: Text(
                      'VS',
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.white70,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )),
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, -10),
                        blurRadius: 35,
                        color: Colors.black)
                  ],
                  border: Border.all(color: Colors.black38, width: 10),
                  color: Colors.red[200],
                ),
                child: Container(
                  child: Center(child: Image.asset('assets/img/luffy.png')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
