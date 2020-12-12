import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/mysuru_map.dart';
import 'package:travel_mysuru/widgets/game_info.dart';


class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              MysuruMap(),
              InfoCard(),
            ],
          ),
      ),
    );
  }
}
