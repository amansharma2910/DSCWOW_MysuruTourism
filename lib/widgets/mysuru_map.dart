import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MysuruMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GMapCard();
  }
}



class GMapCard extends StatefulWidget {
  @override
  _GMapCardState createState() => _GMapCardState();
}

class _GMapCardState extends State<GMapCard> {

  GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(12.2958, 76.6394),
          zoom: 12.0,
        ),
        onMapCreated: (controller){
          setState(() {
            _controller = controller;
          });
        },
        onTap: (coordinate){
          _controller.animateCamera(CameraUpdate.zoomOut());
          _controller.animateCamera(CameraUpdate.newLatLng(coordinate));
          _controller.animateCamera(CameraUpdate.zoomIn());

        },
      ),
    );
  }
}

