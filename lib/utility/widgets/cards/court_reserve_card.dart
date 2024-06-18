import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class CourtReserveCard extends StatelessWidget {
  final String title;
  final String image;
  final String time1;
  final String date1;
  final String clubtitle;
  final String day1;
  final String day2;
  final String day1Time;
  final String day2Time;
  final Widget? widget;
  CourtReserveCard(
      {super.key,
      required this.title,
      required this.image,
      required this.time1,
      required this.date1,
      required this.clubtitle,
      required this.day1,
      required this.day2,
      required this.day1Time,
      required this.day2Time,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff484D54)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: MyColors.defaultBlackColor,
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$title",
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
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$time1",
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
                          Icons.calendar_month,
                          color: MyColors.accentWhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            "$date1",
                            style: Texttheme.title,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
          DottedLine(
            dashColor: Colors.white,
          ),

           SizedBox(
            height: 10,
          ),

          Text(
            "$clubtitle",
            style: Texttheme.heading2,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: MyColors.primaryColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Monday - Friday",
                    style: Texttheme.title,
                  )
                ],
              )),
              Expanded(
                  child: Text(
                "8:30AM - 9:00PM",
                style: Texttheme.title,
              ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: MyColors.primaryColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Saturday - Sunday",
                    style: Texttheme.title,
                  )
                ],
              )),
              Expanded(
                  child: Text(
                "9:00AM - 1:00PM",
                style: Texttheme.title,
              ))
            ],
          ),
          SizedBox(height: 10,),

          widget!
        ],
      ),
    );
  }
}
