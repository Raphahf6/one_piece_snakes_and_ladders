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
                width: 130,
                height: 130,
                decoration: BoxDecoration(
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
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 10),
                    color: Colors.red[200],
                  ),
                  child: Center(
                    child: Text(
                      '30',
                      style: TextStyle(fontSize: 80, color: Colors.white70),
                    ),
                  )),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
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
