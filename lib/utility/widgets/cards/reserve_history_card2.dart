import 'package:flutter/material.dart';
import 'package:sports_caddy/customview/custom_btn.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class ReserveHistoryTwo extends StatelessWidget {
  const ReserveHistoryTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 173,
      width:327,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Center(
              child: Text(
                "No courts reserved, Click here to book court.",
                style: Texttheme.title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          
          SizedBox(
            width: 101,
           
            child: CustomButton(btnText: "Book Now", color: MyColors.primaryColor),
          )
        ],
      ),
    );
  }
}
