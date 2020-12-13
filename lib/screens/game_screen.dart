import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/mysuru_map.dart';
import 'package:travel_mysuru/widgets/game_info.dart';
import 'package:travel_mysuru/widgets/points_card.dart';



class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.3),
          // title: CustomAppBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              MysuruMap(),
              InfoCard(),
              PointsCard(),
            ],
          ),
      ),
    );
  }
}
