




import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:location/location.dart';

class DeviceInfo{

  int i =0;

  static double getDeviceWidth(context){

    double width=0;
    try{
       width = MediaQuery.of(context).size.width;


    }
    catch(e){
       width = 300;

    }


    return width ;
  }


 bool getDeviceType(context){



   bool isAndroid = Theme.of(context).platform == TargetPlatform.android;


   return isAndroid;

  }


/*
  Future<LocationData>  getLocation() async{
    Location location = new Location();

    location.serviceEnabled().then((value) {
      print('status'+value.toString());

      location.requestService().then((value) {

        if(value){
          location.getLocation().then((location) {

            print('location');

            return location ;

          }).whenComplete(() => null)

              .catchError((onError){

            print('location '+onError);

          });

        }

      });


    });


    return LocationData.fromMap(Map());
  }

 */


  static double getDeviceHeight(context){

    double width=0;
    try{
      width = MediaQuery.of(context).size.height;

    }
    catch(e){

    }


    return width ;
  }




  static double geScrollHeight(context) {
    double width;
    try {
      width = MediaQuery
          .of(context)
          .size
          .height;

      if (width < 700) {
        return DeviceInfo.getDeviceHeight(context)- 50;
      }
      else {
        return DeviceInfo.getDeviceHeight(context)- 220;
      }
    }
    catch (e) {
      return DeviceInfo.getDeviceHeight(context);
    }

  }

  }