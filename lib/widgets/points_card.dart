import 'package:flutter/material.dart';
import 'package:travel_mysuru/screens/redeem_points_screen.dart';

class PointsCard extends StatefulWidget {
  @override
  _PointsCardState createState() => _PointsCardState();
}

class _PointsCardState extends State<PointsCard> {

  var _points;

  @override
  void initState() {
    // TODO: implement initState such that at the time of initialization, it fetches data from firestore
    super.initState();
    setState(() {
      _points = 105;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          //
          Container(
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
          ),
          SizedBox(
            width: 20,
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
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }
}
