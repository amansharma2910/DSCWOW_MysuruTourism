import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.55,
        ),
      ],
    );
  }
}


class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: FittedBox(
        fit: BoxFit.cover,
        alignment: Alignment.center,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color(0x23ba8d3a),
            BlendMode.color,
          ),
          child: Image(
            image: AssetImage('images/mysuru_banner.jpg'),
          ),
        ),
      ),
    );
  }
}
