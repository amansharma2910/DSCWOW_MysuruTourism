import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
