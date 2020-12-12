import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/mysuru_map.dart';


class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd9923b),
          // title: CustomAppBar(),
      ),
      body: SingleChildScrollView(
          child: MysuruMap(),
      ),
    );
  }
}
