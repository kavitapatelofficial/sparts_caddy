
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sports_caddy/screens/login_layout.dart';

import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/sizees.dart';

class OnboardingLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OnboardingState();
  }

 }

 class OnboardingState extends State<OnboardingLayout>{

   final controller = PageController(viewportFraction: 1.0, keepPage: true);


    OnboardingState(){

   }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();



   }

   var currentScrollIndex = 0 ;

   @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // ScreenUtil.init(context, minTextAdapt: true , splitScreenMode: true);


     return Scaffold(

      body: Container(
        decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage('assets/images/splash_screen.png'), fit: BoxFit.cover)
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [

            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [


                Flexible(child: PageView.builder(
                    itemCount: 3,
                    controller: controller,
                    onPageChanged: (pages){

                      setState(() {

                        currentScrollIndex = pages;
                      });

                    },
                    itemBuilder: (context , index){

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Center(child: Text('Lorem Ipsum is simply',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Sizees.textSize22px,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins'
                            ),)),

                          SizedBox(height: Sizees.height20Dp,),

                          Container(
                              margin: EdgeInsets.symmetric(horizontal: Sizees.width20Dp),
                              child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                                textAlign: TextAlign.center,

                                style: TextStyle(
                                    color: MyColors.lightWhiteColorColor,
                                    fontSize: Sizees.textSize14px,
                                    height: 1.8,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'
                                ),))
                        ],
                      );
                    })),


              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                      dotHeight: 3,
                      dotWidth: 25,
                      type: WormType.thin,
                      dotColor: MyColors.lightWhiteColorColor,
                      activeDotColor: Color(0xff07D03F)
                    // strokeWidth: 5,
                  ),
                ),


                InkWell(child: Container(
                  margin: EdgeInsets.only(left: Sizees.width20Dp,right: Sizees.width20Dp,
                      top: Sizees.height40Dp,bottom: Sizees.height20Dp),
                  padding: EdgeInsets.symmetric(vertical: Sizees.height12Dp),
                  width: double.maxFinite,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(Sizees.radius24Dp),
                      color: Color(0xff07D03F)
                  ),child: Text(currentScrollIndex == 2 ? 'Get Started' :'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Sizees.textSize14px,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'
                    )),
                ),onTap: (){

                  if(currentScrollIndex == 2){

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginLayout(),
                      ),
                    );
                  }else{

                    setState(() {

                      controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceOut)
                      ;
                    });
                  }



                  /*
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginLayout(),
              ),
            );
             */

                }),


                currentScrollIndex != 2 ?  InkWell(onTap: (){

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LoginLayout(),
                    ),
                  );

                  /*
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginLayout(),
              ),
            );
             */

                },child: Text('Skip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: MyColors.lightWhiteColorColor,
                        fontSize: Sizees.textSize14px,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'
                    )),) : Container(height: Sizees.height14Dp,),

                SizedBox(height: Sizees.height20Dp,)
              ],
            )


          ],
        ),
      ),
    );
  }

 }

 /*


  */