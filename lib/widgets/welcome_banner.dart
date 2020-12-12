import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          color: Colors.black45.withOpacity(0.4),
        ),
        WelcomeText(),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: FittedBox(
        fit: BoxFit.cover,
        alignment: Alignment.center,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color(0xbbba8d3a),
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

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Image(
                  image: AssetImage('images/mysuru_logo.png'),
                ),
              ),
            ),
            Text(
              'Welcome.',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(0.1, 0.1),
                    blurRadius: 40,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "The royal city of Mysuru \nawaits you and your family.",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                height: 1.5,
                shadows: [
                  Shadow(
                    offset: Offset(0.1, 0.1),
                    blurRadius: 10,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Get ready to be mesmerized \nby it's beauty..",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                height: 1.5,
                shadows: [
                  Shadow(
                    offset: Offset(0.1, 0.1),
                    blurRadius: 10,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image(
                  image: AssetImage('images/mysuru_arrow.png'),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
