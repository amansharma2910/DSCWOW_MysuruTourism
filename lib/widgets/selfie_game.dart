import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_mysuru/screens/game_screen.dart';

class GameBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GameBannerImage(),
        Button(),
      ],
    );
  }
}

class GameBannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 270,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.black38.withOpacity(0.5), BlendMode.color),
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image(
              image: AssetImage('images/yt_thumbnail.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          child: RaisedButton(
        color: Colors.black.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.black38)),
        child: Text(
          'Click here to enter game!',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GameScreen()),
          );
        },
      )),
    );
  }
}

