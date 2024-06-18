import 'package:flutter/material.dart';
import 'package:sports_caddy/customview/custom_btn.dart';
import 'package:sports_caddy/customview/default_button.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';
import 'package:sports_caddy/utility/widgets/cards/court_reserve_card.dart';
import 'package:sports_caddy/utility/widgets/mytextfields.dart/textfom_field.dart';

class CourtReserveScreen extends StatefulWidget {
  const CourtReserveScreen({super.key});

  @override
  State<CourtReserveScreen> createState() => _CourtReserveScreenState();
}

class _CourtReserveScreenState extends State<CourtReserveScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 10,),
          CourtReserveCard(
              title: "Sunday Turnament",
              image: ASSETS.racket,
              time1: "10:00 AM To 12:00 PM",
              date1: "27 November Sun 2022 ",
              clubtitle: "Club - 7",
              day1: "Sunday",
              day2: "Sunday",
              day1Time: "8:30AM - 9:00PM",
              day2Time: "11:00AM - 1:00PM",
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  DefaultButton(
                        onpress: (){},
                        btnText: "Edit Reservation",
                        color: MyColors.primaryColor,
                        image: "assets/images/edit.png",
                       ),

                        DefaultButton(
                        onpress: (){},
                        btnText: "Delete Reservation",
                        color: MyColors.pinkColor,
                        image: "assets/images/delete.png",
                       ),

              ],
            ),

              ),

              SizedBox(
                height: 24,
              ),
                CourtReserveCard(
              title: "Sunday Turnament",
              image: ASSETS.racket,
              time1: "10:00 AM To 12:00 PM",
              date1: "27 November Sun 2022 ",
              clubtitle: "Club - 7",
              day1: "Sunday",
              day2: "Sunday",
              day1Time: "8:30AM - 9:00PM",
              day2Time: "11:00AM - 1:00PM",
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  DefaultButton(
                        onpress: (){},
                        btnText: "Edit Reservation",
                        color: MyColors.primaryColor,
                        image: "assets/images/edit.png",
                       ),

                        DefaultButton(
                        onpress: (){},
                        btnText: "Delete Reservation",
                        color: MyColors.pinkColor,
                        image: "assets/images/delete.png",
                       ),

              ],
            ),
              ),

              SizedBox(height: 18,),


              Text("Create New Booking",style: Texttheme.heading1,),
               SizedBox(height: 10,),

               Text("Select the date and  reserve your court",style: Texttheme.title,),
                SizedBox(height: 10,),


             


               MyTextFormField(hinttext: "22-11-2022",),
               SizedBox(height: 18,),
                 CustomButton(btnText: "Reserve Court", color: MyColors.primaryColor),
        ],
      ),
    );
  }
}
