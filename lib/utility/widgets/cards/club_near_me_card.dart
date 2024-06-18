import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class ClubNearMeCard extends StatelessWidget {
  final VoidCallback? onTap;
  const ClubNearMeCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        // height: 106,
        // width: 400,
        decoration: BoxDecoration(
            color: Color(0xff484D54), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(ASSETS.racket))),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tennis Club Championships",
                  style: Texttheme.heading2,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.history,
                      color: MyColors.accentWhite,
                    ),
                    Text(
                      "10:00 AM To 12:00 PM ",
                      style: Texttheme.title,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: MyColors.accentWhite,
                    ),
                    Expanded(
                      child: Text(
                        "Flushing Meadow - Corona Park, Flushing, United States (1km Away)",
                        style: Texttheme.title,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xff07D03F)),
                    Text(
                      "4.5",
                      style: Texttheme.subheading
                          .copyWith(color: Color(0xff07D03F)),
                    ),
                  ],
                ),
                
              ],
            ))
          ],
        ),
      ),
    );
  }
}
