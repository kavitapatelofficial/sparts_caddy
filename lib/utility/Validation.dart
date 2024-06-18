


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  import 'package:intl/intl.dart' as dateformate;


class Validation {



     static bool isStringNunllOrBlank(String text){

       //text = text.replaceAll(' ', '');

       if(text == null || text == 'null' || text.length == 0){
         return true ;
       }

       return false ;
     }


     var userShortName = "";
     String getUserShortName(String userName){

       print(userName);

       userName = userName.replaceAll(RegExp(' +'), ' ');


       userName = userName.replaceAll('                        ', ' ');
       userName = userName.replaceAll('                       ', ' ');
       userName = userName.replaceAll('                      ', ' ');
       userName = userName.replaceAll('                     ', ' ');
       userName = userName.replaceAll('                    ', ' ');
       userName = userName.replaceAll('                   ', ' ');
       userName = userName.replaceAll('                 ', ' ');
       userName = userName.replaceAll('                ', ' ');
       userName = userName.replaceAll('               ', ' ');
       userName = userName.replaceAll('              ', ' ');
       userName = userName.replaceAll('            ', ' ');
       userName = userName.replaceAll('           ', ' ');
       userName = userName.replaceAll('          ', ' ');
       userName = userName.replaceAll('         ', ' ');
       userName = userName.replaceAll('        ', ' ');
       userName = userName.replaceAll('       ', ' ');
       userName = userName.replaceAll('     ', ' ');
       userName = userName.replaceAll('    ', ' ');
       userName = userName.replaceAll('   ', ' ');
       userName = userName.replaceAll('  ', ' ');



       List<String> userNameArray =  userName.split(' ');


       //print('nn '+userNameArray.length.toString());

       if(userNameArray.length == 0){
         userShortName = "";
       }
       else{




         if(userNameArray.length == 1){

           userShortName = userNameArray[0].split('')[0].toUpperCase();
         }
         else{


           try{

             userShortName = userNameArray[0].split('')[0]+ userNameArray[1].trim().split('')[0].toUpperCase();

           }
           catch(e){


             try{
               userShortName = userNameArray[0].split('')[0].toUpperCase();

             }
             catch(e){
               userShortName = '';
             }

           }
         }

       }

       return userShortName;
     }


     //

     static bool isValidIFSCCode(String em) {

       String p = "^[A-Za-z]{4}[a-zA-Z0-9]{6}";
       String p1 = "^[A-Za-z]{4}[a-zA-Z0-9]{7}";

       RegExp regExp = new RegExp(p);
       RegExp regExp1 = new RegExp(p1);

       return regExp.hasMatch(em) || regExp1.hasMatch(em);
     }

     static bool isValidAdharCard(String em) {

       String p = "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}\$";

       RegExp regExp = new RegExp(p);

       return regExp.hasMatch(em) ;
     }

     static bool isValidPanCardNo(String em) {

        String PANNO_PATTERN = "[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}";
       String p = "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}\$";

       RegExp regExp = new RegExp(PANNO_PATTERN);

       return regExp.hasMatch(em) ;
     }


     static bool isValidGstdNo(String em) {

       String PANNO_PATTERN = "^[0-9]{2}[A-Z]{5}[0-9]{4}"
           + "[A-Z]{1}[1-9A-Z]{1}"
           + "Z[0-9A-Z]{1}\$";

       RegExp regExp = new RegExp(PANNO_PATTERN);

       return regExp.hasMatch(em) ;
     }



     static bool isPasswordValid(String em) {

       em = em.trim();

       String PANNO_PATTERN = "[A-Z]{3}[P]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}";
       String p = "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}\$";

       RegExp regExp = new RegExp(PANNO_PATTERN);

       return em.length>5 ;
     }

     static bool isValidEmailAddress(String em) {

       String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})";

       RegExp regExp = new RegExp(p);

       return regExp.hasMatch(em);
     }

     static bool isValidMobileNo(String string) {

       string = string.replaceAll(' ', '');

       if (string == null || string.isEmpty) {
         return false;
       }

       // You may need to change this pattern to fit your requirement.
       // I just copied the pattern from here: https://regexr.com/3c53v
       const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
       final regExp = RegExp(pattern);

       if (!regExp.hasMatch(string)) {
         return false;
       }
       print('ll '+string.length.toString());
       return true && string.length >5;


     }
     static showDialogFor(context){

       Dialog errorDialog =  Dialog(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         child: Column(
           children: [
             Container(height: 100,color: Colors.lightBlue,),
             Container(height: 100,color: Colors.lightBlue)

           ],
         ),
       );

       showDialog(context: context, builder: (BuildContext context) => errorDialog);

     }

     static final todaysDate = DateTime.now();
     static  var _focusedCalendarDate = DateTime.now();
     static  final _initialCalendarDate = DateTime(2000);
     static  final _lastCalendarDate = DateTime(2050);
     static  DateTime? selectedCalendarDate;
     static  final titleController = TextEditingController();
     static  final descpController = TextEditingController();


/*
     static showAlertDialog(context){


       AlertDialog alert = AlertDialog(
         content: Card(
           margin: const EdgeInsets.all(8.0),
           elevation: 5.0,
           color: MyColours.whiteColour,
           shape: const RoundedRectangleBorder(
             borderRadius: BorderRadius.all(
               Radius.circular(10),
             ),
             side: BorderSide(color: AppColors.blackCoffee, width: 2.0),
           ),
           child: TableCalendar(
             focusedDay: _focusedCalendarDate,
             // today's date
             firstDay: _initialCalendarDate,
             // earliest possible date
             lastDay: _lastCalendarDate,
             // latest allowed date
             calendarFormat: CalendarFormat.month,
             // default view when displayed
             // default is Saturday & Sunday but can be set to any day.
             // instead of day number can be mentioned as well.
             weekendDays: const [DateTime.sunday, 6],
             // default is Sunday but can be changed according to locale
             startingDayOfWeek: StartingDayOfWeek.monday,
             // height between the day row and 1st date row, default is 16.0
             daysOfWeekHeight: 40.0,
             // height between the date rows, default is 52.0
             rowHeight: 60.0,
             // this property needs to be added if we want to show events
             //eventLoader: _listOfDayEvents,
             // Calendar Header Styling
             headerStyle: const HeaderStyle(
               titleTextStyle:
               TextStyle(color: AppColors.babyPowder, fontSize: 20.0),
               decoration: BoxDecoration(
                   color: AppColors.eggPlant,
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10),
                       topRight: Radius.circular(10))),
               formatButtonTextStyle:
               TextStyle(color: AppColors.ultraRed, fontSize: 16.0),
               formatButtonDecoration: BoxDecoration(
                 color: AppColors.babyPowder,
                 borderRadius: BorderRadius.all(
                   Radius.circular(5.0),
                 ),
               ),
               leftChevronIcon: Icon(
                 Icons.chevron_left,
                 color: AppColors.babyPowder,
                 size: 28,
               ),
               rightChevronIcon: Icon(
                 Icons.chevron_right,
                 color: AppColors.babyPowder,
                 size: 28,
               ),
             ),
             // Calendar Days Styling
             daysOfWeekStyle: const DaysOfWeekStyle(
               // Weekend days color (Sat,Sun)
               weekendStyle: TextStyle(color: AppColors.ultraRed),
             ),
             // Calendar Dates styling
             calendarStyle: const CalendarStyle(
               // Weekend dates color (Sat & Sun Column)
               weekendTextStyle: TextStyle(color: AppColors.ultraRed),
               // highlighted color for today
               todayDecoration: BoxDecoration(
                 color: AppColors.eggPlant,
                 shape: BoxShape.circle,
               ),
               // highlighted color for selected day
               selectedDecoration: BoxDecoration(
                 color: AppColors.blackCoffee,
                 shape: BoxShape.circle,
               ),
               markerDecoration: BoxDecoration(
                   color: AppColors.ultraRed, shape: BoxShape.circle),
             ),
             selectedDayPredicate: (currentSelectedDate) {
               // as per the documentation 'selectedDayPredicate' needs to determine
               // current selected day
               return (isSameDay(
                   selectedCalendarDate!, currentSelectedDate));
             },
             onDaySelected: (selectedDay, focusedDay) {
               // as per the documentation
               if (!isSameDay(selectedCalendarDate, selectedDay)) {
                 context.setState(() {
                   selectedCalendarDate = selectedDay;
                   _focusedCalendarDate = focusedDay;
                 });
               }
             },
           ),
         ),
         actions: [
         ],
       );

       showDialog(
         context: context,
         builder: (BuildContext context) {
           return alert;
         },
       );
     }

 */

     //(24*60*60+2*60)

     String getTimeString(String myTime, String dateformates){

       DateTime dateTime = dateformate.DateFormat(dateformates).parse(myTime);


     /*  try{

         DateTime nowTime = DateTime.now();


         double timeDiff = ((nowTime.millisecondsSinceEpoch - dateTime.millisecondsSinceEpoch)/1000)/60;

         print(timeDiff.toString());


         int daysDiff = (timeDiff/60)~/24  ;
         double hourDiff = 0;

         if(daysDiff == 0){
           hourDiff = ((timeDiff/60));
         }
         else{
           hourDiff = ((timeDiff/60)/24);
         }


         int minDiff = ((hourDiff*60)%60).toInt() ;

         print(daysDiff.toString()+'   '+(hourDiff.toInt()) .toString()+' '+minDiff.toString());

         if(daysDiff == 0 && hourDiff.toInt() == 0){

           if(minDiff < 10){

             return 'Just Now';
           }
           else{

             return minDiff.toString()+ " minuts before" ;
           }

         }
         else {
           if (daysDiff == 0) {
             return hourDiff == 1 ? '1 hour ago' : '${hourDiff.toInt()} hours ago';
           }
           else{

             return dateformate.DateFormat('dd-MMM-yyyy hh:mm a').format(dateTime);
           }
         }
       }
       catch(e){

       }*/

       return dateformate.DateFormat('dd MMM hh:mm a').format(dateTime);

     }


}