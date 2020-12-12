import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: Text(
        'Placeholder',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}