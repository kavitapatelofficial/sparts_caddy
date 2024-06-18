




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:sports_caddy/utility/my_colors.dart';

import 'device_info.dart';


class ShowMessage {


  static showAlertDialogBack(msg,context){

    Widget cancelButton = TextButton(
      child: Text("OK", style: TextStyle(fontFamily: 'Questrial'),),
      onPressed:  () {
        print('okkkk');

        Navigator.of(context ,rootNavigator: true).pop(context);
        Navigator.of(context ).pop();

      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Upload Successful"),
      content: Text(msg),
      actions: [
        cancelButton
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

    static String titel = 'Alert!' ;

  /*
      static showAlertDialog(msg,context){



      YYDialog().build(context)
        ..width=DeviceInfo.getDeviceWidth(context)-20
        ..backgroundColor = MyColours.whiteColour
        ..borderRadius = 10

        ..widget(Column(
          children: [

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: MyColors.lightBrownColour,

              ),child: Center(child: Text('Alert!', style: TextStyle(
                color: MyColours.whiteColour,
                fontSize: 16,
                fontFamily: MyFontFamily.questrial
            ),),),
            ),


            SizedBox(height: 30,),


            Text(msg,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColours.greyColour,
                fontSize: 18,
                fontFamily: MyFontFamily.questrial,
                fontWeight: FontWeight.w500
            ),),


            SizedBox(height: 30,),


            Row(
              children: [



                Flexible(child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(

                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: MyColours.darkBrownColour,

                    ),child: Center(child: Text('OK', style: TextStyle(
                      color: MyColours.whiteColour,
                      fontSize: 16,
                      fontFamily: MyFontFamily.questrial
                  ),),),
                  ),
                ),flex: 1,),

              ],
            )


          ],
        )).show();



    }

   */

    static showAlertDialogfinish(msg,context){

      Widget cancelButton = TextButton(
        child: Text('OK', style: TextStyle(fontFamily: 'Questrial'),),
        onPressed:  () {
          print('okkkk');
          Navigator.of(context ,rootNavigator: true).pop(context);
          SystemNavigator.pop();

        },
      );

      AlertDialog alert = AlertDialog(
        title: Text('Upload_Successful'),
        content: Text(msg),
        actions: [
          cancelButton
        ],
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }





/*
  static  showAlertDialogFormCallBack(msg,context ,DialogCallBack dialogCallBackListener) {



    YYDialog().build(context)
      ..width=DeviceInfo.getDeviceWidth(context)-20
      ..backgroundColor = MyColors.whiteColour
      ..barrierDismissible= false
      ..borderRadius = 10

      ..widget(Column(
        children: [

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: MyColours.lightBrownColour,

            ),child: Center(child: Text('Alert!', style: TextStyle(
              color: MyColours.whiteColour,
              fontSize: 16,
              fontFamily: MyFontFamily.questrial
          ),),),
          ),


          SizedBox(height: 30,),


          Text(msg,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: MyColours.greyColour,
                fontSize: 18,
                fontFamily: MyFontFamily.questrial,
                fontWeight: FontWeight.w500
            ),),


          SizedBox(height: 30,),


          Row(
            children: [



              Flexible(child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                  dialogCallBackListener._clickOnOKButton(1000);
                },
                child: Container(

                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: MyColours.darkBrownColour,

                  ),child: Center(child: Text('OK', style: TextStyle(
                    color: MyColours.whiteColour,
                    fontSize: 16,
                    fontFamily: MyFontFamily.questrial
                ),),),
                ),
              ),flex: 1,),

            ],
          )


        ],
      )).show();



  }

 */


  static setup(DialogCallBack dialogCallBack) {

      dialogCallBack._clickOnOKButton(78);
  }


}



abstract class Event {
  void run();
}

abstract class DialogCallBackListener {

  final int flagIndex ;

  DialogCallBackListener( this.flagIndex);

  clickOnOKButton(int flagIndex);


}

class DialogCallBack implements DialogCallBackListener{

  DialogCallBack({required void clickOnOKButton(intghhh)}) {

    _clickOnOKButton = clickOnOKButton;

  }


  late void Function(int) _clickOnOKButton;

  @override
  clickOnOKButton(int flagIndex) => _clickOnOKButton ;


  @override
  // TODO: implement flagIndex
  int get flagIndex => 1000;

}


class _AnonymousEvent implements Event {
  _AnonymousEvent({required void run()}): _run2 = run;

  final void Function() _run2;

  @override
  void run() => _run2();
}

Event createAnonymousEventsss() {
  return _AnonymousEvent(
    run: () => print('run'),
  );
}






