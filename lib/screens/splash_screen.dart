
 import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports_caddy/generated/i18n.dart';
import 'package:sports_caddy/screens/onboarding_layout.dart';

import 'package:sports_caddy/utility/device_info.dart';
import 'package:sports_caddy/utility/sizees.dart';



class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }

 }
 class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    loadCurrentLanguage();


    Future.delayed(Duration(seconds: 1),(){

      ScreenUtil.init(context, minTextAdapt: true , splitScreenMode: true).then((value) {

        Sizees.textSize1px = 1.sp;
        Sizees.textSize2px = 2.sp;
        Sizees.textSize3px = 3.sp;
        Sizees.textSize4px = 4.sp;
        Sizees.textSize5px = 5.sp;
        Sizees.textSize6px = 6.sp;
        Sizees.textSize7px = 7.sp;
        Sizees.textSize8px = 8.sp;
        Sizees.textSize9px = 9.sp;
        Sizees.textSize10px = 10.sp;
        Sizees.textSize11px = 11.sp;
        Sizees.textSize12px = 12.sp;
        Sizees.textSize13px = 13.sp;
        Sizees.textSize14px = 14.sp;
        Sizees.textSize15px = 15.sp;
        Sizees.textSize16px = 16.sp;
        Sizees.textSize17px = 17.sp;
        Sizees.textSize18px = 18.sp;
        Sizees.textSize19px = 19.sp;
        Sizees.textSize20px = 20.sp;
        Sizees.textSize21px = 21.sp;
        Sizees.textSize22px = 22.sp;
        Sizees.textSize23px = 23.sp;
        Sizees.textSize24px = 24.sp;
        Sizees.textSize25px = 25.sp;
        Sizees.textSize26px = 26.sp;
        Sizees.textSize27px = 27.sp;
        Sizees.textSize28px = 28.sp;
        Sizees.textSize29px = 29.sp;
        Sizees. textSize30px = 30.sp;




        Sizees.width1Dp = 1.w;
        Sizees.width2Dp = 2.w;
        Sizees.width3Dp = 3.w;
        Sizees.width4Dp = 4.w;
        Sizees.width5Dp = 5.w;
        Sizees.width6Dp = 6.w;
        Sizees.width7Dp = 7.w;
        Sizees.width8Dp = 8.w;
        Sizees.width9Dp = 9.w;
        Sizees.width10Dp = 10.w;
        Sizees.width11Dp = 11.w;
        Sizees.width12Dp = 12.w;
        Sizees.width13Dp = 13.w;
        Sizees.width14Dp = 14.w;
        Sizees.width15Dp = 15.w;
        Sizees.width16Dp = 16.w;
        Sizees.width17Dp = 17.w;
        Sizees.width18Dp = 18.w;
        Sizees.width19Dp = 19.w;
        Sizees.width20Dp = 20.w;
        Sizees.width21Dp = 21.w;
        Sizees.width22Dp = 22.w;
        Sizees.width23Dp = 23.w;
        Sizees.width24Dp = 24.w;
        Sizees.width25Dp = 25.w;
        Sizees.width26Dp = 26.w;
        Sizees.width27Dp = 27.w;
        Sizees.width28Dp = 28.w;
        Sizees.width29Dp = 29.w;
        Sizees.width30Dp = 30.w;
        Sizees.width31Dp = 31.w ;
        Sizees.width32Dp = 32.w ;
        Sizees.width33Dp = 33.w ;
        Sizees.width34Dp = 34.w ;
        Sizees.width35Dp = 35.w ;
        Sizees.width36Dp = 36.w ;
        Sizees.width37Dp = 37.w ;
        Sizees.width38Dp = 38.w ;
        Sizees.width39Dp = 39.w ;
        Sizees.width40Dp = 40.w ;
        Sizees.width41Dp = 41.w ;
        Sizees.width42Dp = 42.w ;
        Sizees.width43Dp = 43.w ;
        Sizees.width44Dp = 44.w ;
        Sizees.width45Dp = 45.w ;
        Sizees.width46Dp = 46.w ;
        Sizees.width47Dp = 47.w ;
        Sizees.width48Dp = 48.w ;
        Sizees.width49Dp = 49.w ;
        Sizees.width50Dp = 50.w ;


        Sizees.height1Dp = 1.h ;
        Sizees.height2Dp = 2.h ;
        Sizees.height3Dp = 3.h ;
        Sizees.height4Dp = 4.h ;
        Sizees.height5Dp = 5.h ;
        Sizees.height6Dp = 6.h ;
        Sizees.height7Dp = 7.h ;
        Sizees.height8Dp = 8.h ;
        Sizees.height9Dp = 9.h ;
        Sizees.height10Dp = 10.h ;
        Sizees.height11Dp = 11.h ;
        Sizees.height12Dp = 12.h ;
        Sizees.height13Dp = 13.h ;
        Sizees.height14Dp = 14.h ;
        Sizees.height15Dp = 15.h ;
        Sizees.height16Dp = 16.h ;
        Sizees.height17Dp = 17.h ;
        Sizees.height18Dp = 18.h ;
        Sizees.height19Dp = 19.h ;
        Sizees.height20Dp = 20.h ;
        Sizees.height21Dp = 21.h ;
        Sizees.height22Dp = 22.h ;
        Sizees.height23Dp = 23.h ;
        Sizees.height24Dp = 24.h ;
        Sizees.height25Dp = 25.h ;
        Sizees.height26Dp = 26.h ;
        Sizees.height27Dp = 27.h ;
        Sizees.height28Dp = 28.h ;
        Sizees.height29Dp = 29.h ;
        Sizees.height30Dp = 30.h ;

        Sizees.height31Dp = 31.h ;
        Sizees.height32Dp = 32.h ;
        Sizees.height33Dp = 33.h ;
        Sizees.height34Dp = 34.h ;
        Sizees.height35Dp = 35.h ;
        Sizees.height36Dp = 36.h ;
        Sizees.height37Dp = 37.h ;
        Sizees.height38Dp = 38.h ;
        Sizees.height39Dp = 39.h ;
        Sizees.height40Dp = 40.h ;
        Sizees.height41Dp = 41.h ;
        Sizees.height42Dp = 42.h ;
        Sizees.height43Dp = 43.h ;
        Sizees.height44Dp = 44.h ;
        Sizees.height45Dp = 45.h ;
        Sizees.height46Dp = 46.h ;
        Sizees.height47Dp = 47.h ;
        Sizees.height48Dp = 48.h ;
        Sizees.height49Dp = 49.h ;
        Sizees.height50Dp = 50.h ;

        Sizees.radius1Dp = 1.r ;
        Sizees.radius2Dp = 2.r ;
        Sizees.radius3Dp = 3.r ;
        Sizees.radius4Dp = 4.r ;
        Sizees.radius5Dp = 5.r ;
        Sizees.radius6Dp = 6.r ;
        Sizees.radius7Dp = 7.r ;
        Sizees.radius8Dp = 8.r ;
        Sizees.radius9Dp = 9.r ;
        Sizees.radius10Dp = 10.r ;
        Sizees.radius11Dp = 11.r ;
        Sizees.radius12Dp = 12.r ;
        Sizees.radius13Dp = 13.r ;
        Sizees.radius14Dp = 14.r ;
        Sizees.radius15Dp = 15.r ;
        Sizees.radius16Dp = 16.r ;
        Sizees.radius17Dp = 17.r ;
        Sizees.radius18Dp = 18.r ;
        Sizees.radius19Dp = 19.r ;
        Sizees.radius20Dp = 20.r ;

        Sizees.radius21Dp = 21.r ;
        Sizees.radius22Dp = 22.r ;
        Sizees.radius23Dp = 23.r ;
        Sizees.radius24Dp = 24.r ;
        Sizees.radius25Dp = 25.r ;
        Sizees.radius26Dp = 26.r ;
        Sizees.radius27Dp = 27.r ;
        Sizees.radius28Dp = 28.r ;
        Sizees.radius29Dp = 29.r ;
        Sizees.radius30Dp = 30.r ;

      });


    });

    Future.delayed(Duration(seconds: 2), (){


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingLayout(),
        ),
      );


    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff252C34),
      body: Container(

        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('assets/images/splash_screen.png'), fit: BoxFit.cover)
        ),
        child: Center(
          child: Image(image: AssetImage('assets/images/app_logo.png'),width:
          DeviceInfo.getDeviceWidth(context)*0.4,),
        ),
      ),
    );
  }

  void loadCurrentLanguage(){

    S.delegate.load(Locale("en","US")).then((value) {

      print(value.app_name);

    });
  }

  Future _initImages() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines


    print(manifestMap.keys);

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('images/'))
        .where((String key) => key.contains('.svg'))
        .toList();

    imagePaths.forEach((element) {

      print(element);

    });

    setState(() {
    //  someImages = imagePaths;
    });
  }
 }