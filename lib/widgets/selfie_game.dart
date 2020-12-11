import 'package:flutter/material.dart';

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
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.yellow.withOpacity(0.2), BlendMode.color),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image(
            image: AssetImage('images/yt_thumbnail.png'),
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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)
              ),
              child: Text(
                'Click here to enter game!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w200
                ),

              ),
              // onPressed: playGame(),
            )
          ],
        ),
    );
  }
}
