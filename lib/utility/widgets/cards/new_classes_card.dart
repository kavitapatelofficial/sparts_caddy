import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/texttheme.dart';
import 'package:sports_caddy/utility/widgets/outlined_button.dart';


class NewClassesCard extends StatelessWidget {
  const NewClassesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 106,
      width: 400,
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
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(ASSETS.event1))),
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
              Text(
                "14:00 PM To 15:00 May, 14",
                style: Texttheme.title,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "&10",
                style: Texttheme.subheading.copyWith(color: Color(0xff07D03F)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  OutlineButtonWidget(text: "Fri"),
                  OutlineButtonWidget(text: "Sat"),
                  OutlineButtonWidget(text: "Sun"),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
