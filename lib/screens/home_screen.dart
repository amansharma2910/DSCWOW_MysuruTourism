import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/custom_appbar.dart';
import 'package:travel_mysuru/widgets/welcome_banner.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Color(0xffd9923b),
        title: CustomAppBar(),
      ),
      body: Column(
        children: [
          WelcomeBanner(),
        ],
      ),
    );
  }
}
