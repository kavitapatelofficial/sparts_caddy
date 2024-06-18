import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class ReserveHistory extends StatelessWidget {
  const ReserveHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // height: 173,
      width: 187,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.white,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ASSETS.racket)),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1)),
            child: Image.asset(
              ASSETS.icon3,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "#1234457IFD",
            style: Texttheme.title,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Golden Tennis Club",
            style: Texttheme.heading2.copyWith(color: Color(0xff07D03F)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "14:00 PM To 15:00 May, 14",
            style: Texttheme.title,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "&10.00",
            style: Texttheme.heading2.copyWith(color: Color(0xff07D03F)),
          ),
        ],
      ),
    );
  }
}
