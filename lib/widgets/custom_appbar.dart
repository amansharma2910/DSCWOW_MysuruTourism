import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      padding: EdgeInsets.symmetric(vertical: 10.0),
    );
  }
}
