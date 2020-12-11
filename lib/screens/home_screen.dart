import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text(
          'Mysuru Tourism',
        ),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
