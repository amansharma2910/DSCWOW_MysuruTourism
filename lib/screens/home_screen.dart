import 'package:flutter/material.dart';
import 'package:travel_mysuru/widgets/custom_appbar.dart';
import 'package:travel_mysuru/widgets/welcome_banner.dart';
import 'package:travel_mysuru/widgets/video_card.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Color(0xffd9923b),
        title: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeBanner(),
            VideoCard(),
          ],
        ),
      ),
    );
  }
}
