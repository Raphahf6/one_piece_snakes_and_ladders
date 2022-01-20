import 'package:flutter/material.dart';
import 'package:game_snakes_ladders/stores/snakes-ladders.dart';
import 'package:game_snakes_ladders/view/home.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<SnakesLadders>(SnakesLadders());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: Home(),
      // home: ImageItem(),
    );
  }
}
