import 'package:flutter/material.dart';
import 'package:travel_mysuru/screens/redeem_points_screen.dart';

int _points = 5;

class PointsCard extends StatefulWidget {
  @override
  _PointsCardState createState() => _PointsCardState();
}

class _PointsCardState extends State<PointsCard> {
  //TODO: Connect point count to firestore db
  int points = 10000;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: 35,
          ),
          // 
          Points(),
          SizedBox(
            width: 35,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RedeemPointsScreen()),
              );
            },
            color: Colors.red.withOpacity(0.15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.redAccent)),
            child: Text(
              'Redeem',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Points extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Points: $_points',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
