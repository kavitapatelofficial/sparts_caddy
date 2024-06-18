
 import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports_caddy/animation/pageanimation/ScaleRoute.dart';
import 'package:sports_caddy/customview/BouncingButton.dart';
import 'package:sports_caddy/screens/dashboard_screen.dart';


import 'package:sports_caddy/utility/KeyBoardSetting.dart';
import 'package:sports_caddy/utility/Validation.dart';
import 'package:sports_caddy/utility/device_info.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/sizees.dart';

class LoginLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }

 }

 class LoginState extends State<LoginLayout>{

   final controller = PageController(viewportFraction: 1.0, keepPage: true);
   final _formKey = GlobalKey<FormState>();
   final _passwordformKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xff252C34),
       bottomNavigationBar: Column(
         mainAxisSize: MainAxisSize.min,
         children: [



           Padding(
             padding: EdgeInsets.symmetric(vertical: Sizees.height20Dp),
             child: RichText(
               textAlign: TextAlign.center,
               text: TextSpan(
                   children: [

                     TextSpan(text: "Didn't have account?",
                       style: TextStyle(
                         color: Color(0xffCFD8E5),
                         fontSize: Sizees.textSize14px,

                         fontWeight: FontWeight.w600,
                         fontFamily: 'Poppins',

                       ),),


                     TextSpan(text: ' Sign Up' ,
                         recognizer: TapGestureRecognizer()..onTap = (){

                           Navigator.of(context).pop();

                           /*Navigator.of(context).push(
                               ScaleRoute( SignUpPageLayout()));*/

                         },
                         style: TextStyle(

                           color: Color(0xff07D03F),
                           fontWeight: FontWeight.w700 ,
                           decorationThickness: 2,
                           fontFamily: 'Poppins',

                           decorationStyle: TextDecorationStyle.solid,
                           fontSize: Sizees.textSize14px,

                         )),


                   ]
               ),
             ),
           )
           

         ],
       ),
       body: Container(
         child: SingleChildScrollView(
           child: Column(
             mainAxisSize: MainAxisSize.max,
             crossAxisAlignment: CrossAxisAlignment.center,
             children:  [


               SizedBox(),

               Align(
                 child: Image(image: AssetImage('assets/images/app_logo.png'),width:
                 DeviceInfo.getDeviceWidth(context)*0.4,),
               ),

               SizedBox(height: Sizees.height20Dp,),

               Container(
                   margin: EdgeInsets.only(left: Sizees.width20Dp),
                   alignment: Alignment.topLeft,
                   child: Text('Lets get started',
                     textAlign: TextAlign.left,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: Sizees.textSize22px,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'Poppins'
                     ),)),


               Container(
                   margin: EdgeInsets.only(left: Sizees.width20Dp,top: Sizees.height20Dp),
                   alignment: Alignment.topLeft,
                   child: Text('Login to Continue',
                     textAlign: TextAlign.left,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: Sizees.textSize14px,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'Poppins'
                     ),)),

               SizedBox(height: 20,),

               Container(
                 margin: EdgeInsets.symmetric(horizontal: Sizees.width20Dp),
                 child: Form(
                   child: getEmailAddress(),
                   key: _formKey,
                 ),
               ) ,

               SizedBox(height: Sizees.height40Dp,),


               Container(
                 margin: EdgeInsets.symmetric(horizontal: Sizees.width20Dp),
                 child: Form(
                   child: getPasswordLaoyout(),
                   key: _passwordformKey,
                 ),
               ) ,

               Container(
                   margin: EdgeInsets.only(left: Sizees.width20Dp,top: Sizees.height20Dp),
                   alignment: Alignment.topLeft,
                   child: Text('Forgot Password?',
                     textAlign: TextAlign.left,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: Sizees.textSize14px,
                         fontWeight: FontWeight.w600,
                         fontFamily: 'Poppins'
                     ),)),

               BouncingButton(Container(
                 margin: EdgeInsets.only(left: Sizees.width20Dp,right: Sizees.width20Dp,
                     top: Sizees.height40Dp,bottom: Sizees.height20Dp),
                 padding: EdgeInsets.symmetric(vertical: Sizees.height12Dp),
                 width: double.maxFinite,
                 decoration: BoxDecoration(

                     borderRadius: BorderRadius.circular(Sizees.radius24Dp),
                     color: Color(0xff07D03F)
                 ),child: Text('Login',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: Sizees.textSize14px,
                       fontWeight: FontWeight.w700,
                       fontFamily: 'Poppins'
                   )),
               ),  (){

         Navigator.of(context).push(ScaleRoute(DashBoardScreen()));
         ////
         }, 500),

             ],
           ),
         ),
       ),
    );
  }


   bool isEmailHintShow = false ;
   var emailAddressHint= 'Your Email' ;
   var emailAddress = '';
   TextEditingController emailEditingControll = new TextEditingController();
   Widget getEmailAddress(){

     return  Stack(
       alignment: Alignment.centerRight ,
       children: <Widget>[

         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[

             Visibility(visible: isEmailHintShow,child:
             Padding(padding: EdgeInsets.only(left: 1),
                 child: Text('Your Email' ,
                     style: TextStyle(color: Colors.white , fontFamily: 'Poppins',
                       fontWeight: FontWeight.w500,
                       fontSize: 14,

                     ))),),

             Focus(

               child:
               TextFormField(
                 controller: emailEditingControll,
                 maxLength: 30,
                 textInputAction: TextInputAction.next,
                 inputFormatters: [FilteringTextInputFormatter.deny(RegExp('[ ]'))],
                 style: TextStyle(color: Colors.white,
                                  fontSize: Sizees.textSize14px,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                 keyboardType: TextInputType.emailAddress,
                 onFieldSubmitted: (v){
                   FocusScope.of(context).requestFocus(passwordFocusnode);

                 },
                 onChanged: (emailAddress)
                 {


                   this.emailAddress = emailAddress ;
                   _formKey.currentState!.validate();

                 },
                 validator: (input) {

                   //isAddTaxPayerRequest = !Validation.isValidEmailAddress(input!);



                   return  input!.isEmpty ? '\nPlease enter email address' :
                   Validation.isValidEmailAddress(input) ? null
                       : '\nPlease enter valid email addres';
                 },
                 decoration: InputDecoration(
                   hintText: emailAddressHint,
                   prefixIconConstraints: BoxConstraints(maxWidth: Sizees.width40Dp
                       ,maxHeight: Sizees.height40Dp),
                   prefixIcon: Container(
                     child: Image(image: AssetImage('assets/images/email.png'),),
                     margin: EdgeInsets.only(left: Sizees.width5Dp,right: Sizees.width10Dp),
                   ),
                   contentPadding: EdgeInsets.only(top: Sizees.height10Dp,bottom: Sizees.height10Dp),
                   isDense: true,

                   hintStyle:
                   TextStyle(color:  Color(MyColors.inputHintColour) ,fontSize: Sizees.textSize12px,
                       fontFamily: 'Poppins',

                       fontWeight: FontWeight.w500),

                   counterText: '',
                   border: UnderlineInputBorder(
                       borderSide: BorderSide(
                         width: 1,
                         color: MyColors.inputLineColor
                       )),
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(
                           width: 1.5,
                         color: Colors.white
                           )),
                   focusedBorder:
                   UnderlineInputBorder(

                       borderSide: BorderSide(
                           width: 1.5,
                           color:
                           Colors.white)),

                 ),
               ),

               onFocusChange: (hasFocus)
               {

                 setState(() {



                   isEmailHintShow = hasFocus ;


                   if(emailEditingControll.text.length != 0){

                     isEmailHintShow = true ;
                   }

                   if(isEmailHintShow){

                     emailAddressHint = '';
                   }
                   else{
                     emailAddressHint = 'Your Email';

                   }

                   hideKeyBoardWhenTouchOutSideTouch();

                 });

                 print('hasFocus '+hasFocus.toString());

               },)
           ],) ,

       ],);
   }





   TextEditingController passwordEdtingControll = new TextEditingController();
   String passwordHint = 'Password';
   String password = '';
   bool  isPasswordLableShow = false;
   final passwordFocusnode = FocusNode();
   bool isObsSecure = true;
   Widget getPasswordLaoyout(){


     //Fireb

     return  Stack(
       alignment: Alignment.centerRight,

       children: <Widget>[

         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[

             Visibility(visible: isPasswordLableShow,child:
             Padding(padding: EdgeInsets.only(left: 1),
                 child: Text('Password' ,

                   style: TextStyle(color: Colors.white , fontFamily: 'Poppins',
                   fontWeight: FontWeight.w500,
                     fontSize: Sizees.textSize14px,

                   ),)),),

             Focus(child: TextFormField(
               obscureText: isObsSecure,
               focusNode: passwordFocusnode,
               maxLength: 25,
               inputFormatters: <TextInputFormatter> [
                 FilteringTextInputFormatter.deny(RegExp("[ ]"))
               ],
               controller: passwordEdtingControll,

               style: TextStyle(color:  Colors.white,
                   fontFamily: 'Poppins',
                   fontSize: Sizees.textSize14px,
                   fontWeight: FontWeight.w500),
               keyboardType: TextInputType.text,
               textInputAction: TextInputAction.done,

               onChanged: (password){

                 this.password = password;
                 _passwordformKey.currentState!.validate();
               },
               validator: (input) {

                 /// isAddTaxPayerRequest =  !Validation.isValidPanCardNo(input!);

                 print('yaha');

                 return  input!.isEmpty ? '\nPlease enter password' :
                 Validation.isPasswordValid(input) ? null : '\nPlease enter valid password';

               },
               decoration: new InputDecoration(
                 suffixIconConstraints: BoxConstraints(maxHeight: Sizees.height30Dp),
                 suffixIcon: InkWell(
                   onTap: (){

                     setState(() {
                       this.isObsSecure = ! isObsSecure;
                     });

                   },
                   child: Container(
                     margin: EdgeInsets.only(right: Sizees.width5Dp),
                     child: Image.asset('assets/images/eye.png' ,
                       color: !isObsSecure? MyColors.greenColor:MyColors.inputLineColor
                       ,width: 25,),
                   ),
                 ),
                 prefixIconConstraints: BoxConstraints(maxWidth: Sizees.width40Dp
                     ,maxHeight: Sizees.height40Dp),
                 prefixIcon: Container(
                   child: Image(image: AssetImage('assets/images/lock.png'),),
                   margin: EdgeInsets.only(left: Sizees.width5Dp,right: Sizees.width10Dp),
                 ),
                 contentPadding: EdgeInsets.only(top: Sizees.height10Dp,bottom: Sizees.height10Dp),
                 isDense: true,
                 counterText: '',
                 hintStyle: TextStyle(color:  Color(MyColors.inputHintColour) ,
                     fontSize: Sizees.textSize12px,
                 fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                 hintText: passwordHint,
                 border: UnderlineInputBorder(
                     borderSide: BorderSide(
                         width: 1,
                         color: MyColors.inputLineColor
                     )),
                 enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(
                         width: 1.5,
                         color: Colors.white
                     )),
                 focusedBorder:
                 UnderlineInputBorder(

                     borderSide: BorderSide(
                         width: 1.5,
                         color:
                         Colors.white)),

               ),
             ),
               onFocusChange: (hasFocus){

                 setState(() {

                   isPasswordLableShow = hasFocus ;

                   if(passwordEdtingControll.text.length != 0){

                     isPasswordLableShow = true ;
                   }


                   if(isPasswordLableShow){

                     passwordHint = '';
                   }
                   else{
                     passwordHint = 'Password';

                   }

                   hideKeyBoardWhenTouchOutSideTouch();
                 });

               },)
           ],) ,

       ],);


   }





   hideKeyBoardWhenTouchOutSideTouch(){


     if(!isEmailHintShow && !isPasswordLableShow){

       KeyBoardSetting.hideKeyBoard(context);

     }


   }
 }


 /*

  */