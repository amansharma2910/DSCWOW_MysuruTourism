import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Color(0xffb08613),
                borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              margin: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
