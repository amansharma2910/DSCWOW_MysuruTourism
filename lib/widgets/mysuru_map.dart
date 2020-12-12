import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MysuruMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TitleCard(),
      GMapCard(),
    ]);
  }
}

class TitleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: Text(
        'Placeholder',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

class GMapCard extends StatefulWidget {
  @override
  _GMapCardState createState() => _GMapCardState();
}

class _GMapCardState extends State<GMapCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(12.2958, 76.6394),
          zoom: 12.0,
        ),
      ),
    );
  }
}

