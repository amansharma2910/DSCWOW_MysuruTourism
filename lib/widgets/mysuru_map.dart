import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_core/firebase_core.dart';



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

  List<Marker> allMarkers = [];
  var clients = [];

  List<List<String>> coordinates = [
    ['Mysore Palace', '12.3052', '76.6552'],
    ['Brindavan Gardens', '12.4217', '76.5728'],
    ['Sri Chamarajendra Zoological Gardens', '12.3022', '76.6642'],
    ["Sri Chamundeshwari Temple", "12.2725", "76.6707"],
    ["St. Philomena's Cathedral", "12.3210", "76.6583"],
    ["Jaganmohan Palace Art Gallery and Auditorium", "12.3069", "76.6499"],
    ["Talakadu", "12.1947", "77.0305"],
    ["Chamundi Hills", "12.2732", "76.6707"],
    ["Railway Museum", "12.3163", "76.6433"],
    ["Nagarahole National Park", "12.0314", "76.1207"]
  ];



  @override
  void initState() {
    super.initState();
    populateClients();
    for (int i = 0; i < clients.length; i++) {
      allMarkers.add(Marker(
          draggable: false,
          infoWindow: InfoWindow(
            title: clients[i]['place'],
          ),
          markerId: MarkerId(clients[i][0]),
          position: LatLng(
            clients[i]['location'].latitude,
            clients[i]['location'].longitude,
          )));
    }
  }

  populateClients() {
    clients = [];
    Firestore.instance.collection('markers').getDocuments().then((docs) {
      if (docs.documents.isNotEmpty) {
        for (int i = 0; i < docs.documents.length; ++i) {
          clients.add(docs.documents[i].data);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        markers: Set.from(allMarkers),
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(12.2958, 76.6394),
          zoom: 12.0,
          tilt: 45,
        ),
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        onTap: (coordinate) {
          _controller.animateCamera(CameraUpdate.zoomOut());
          _controller.animateCamera(CameraUpdate.newLatLng(coordinate));
          _controller.animateCamera(CameraUpdate.zoomIn());
        },
      ),
    );
  }
}
