import 'package:flutter/material.dart';
import 'package:travel_mysuru/screens/camera_screen.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 330,
          decoration: BoxDecoration(
              image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.lighten),
            fit: BoxFit.cover,
            image: AssetImage('images/game_info_banner.jpg'),
          )),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 330,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 330,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#LiveMysuru \nChallenge',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Visit the location marked on the map, \nclick a #selfie there and win coupons!',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      height: 1.5),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.white70.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black38)),
                  child: Text(
                    'Tap to take a selfie!',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CameraScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
