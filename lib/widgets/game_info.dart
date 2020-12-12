import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
    colorFilter: new ColorFilter.mode(
    Colors.black.withOpacity(0.8), BlendMode.lighten),
    fit: BoxFit.cover,
    image: AssetImage('images/game_info_banner.jpg'),
            )
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#LiveMysuru Challenge',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
