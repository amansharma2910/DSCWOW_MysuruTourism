import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(TravelMysuru());
}

class TravelMysuru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff032541),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}


