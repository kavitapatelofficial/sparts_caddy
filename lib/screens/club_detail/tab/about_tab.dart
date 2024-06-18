import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:sports_caddy/customview/BouncingButton.dart';
import 'package:sports_caddy/customview/default_button.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/sizees.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff484D54),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: Texttheme.heading2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReadMoreText(
                    'We are a tennis club based in Alnwick within the beautiful county of Northumberland. We have three hard courts which are lit with state of the art floodlights',
                    numLines: 2,
                    readMoreText: 'Read more',
                    readLessText: 'Read less',
                    style: Texttheme.bodytext,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff484D54),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Opening Hours",
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
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff484D54),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: Texttheme.heading2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flushing Meadow - Corona Park, Flushing, United States (1km Away)",
                        style: Texttheme.title,
                      ),
                        SizedBox(
                            height: 10,
                          ),
                       DefaultButton(
                        onpress: (){},
                        btnText: "Get Direction",
                        color: MyColors.primaryColor,
                        image: "assets/images/send.png",
                       ),

                      
                   
                    ],
                  )),
                  Expanded(child: Image.asset("assets/images/map.png"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
