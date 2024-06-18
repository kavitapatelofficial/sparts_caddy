import 'package:flutter/material.dart';
import 'package:sports_caddy/screens/community/community_screen.dart';
import 'package:sports_caddy/screens/home_screen.dart';
import 'package:sports_caddy/screens/profile/profile_screen.dart';
import 'package:sports_caddy/screens/setting/setting_screen.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;

  List<Widget> children = [
    HomeScreen(),
   CommunityScreen(),
   SettingsScreen(),
   ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor:MyColors.primaryColor,
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Icon(Icons.add,color: MyColors.defaultBlackColor,), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar:ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
       
      ),
        child: BottomAppBar(
          
          elevation: 0,
          //bottom navigation bar on scaffold
      
          clipBehavior: Clip.antiAlias,
          color: Color(0xff484D54),
          notchMargin: 8.0,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 45,
                  width: 45,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        
                      _currentIndex=0;
                      });
                      
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          ASSETS.home2,
                          color: _currentIndex==0?MyColors.primaryColor:MyColors.accentWhite,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Home",
                          style: Texttheme.subheading.copyWith(color:  _currentIndex==0?MyColors.primaryColor:MyColors.accentWhite,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 85,
                  child: InkWell(
                    onTap: () {
                       setState(() {
                        
                      _currentIndex=1;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          ASSETS.community,
                          color:  _currentIndex==1?MyColors.primaryColor:MyColors.accentWhite,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Community",
                          style: Texttheme.subheading.copyWith(color:  _currentIndex==1?MyColors.primaryColor:MyColors.accentWhite,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  // width: 45,
                  child: InkWell(
                    onTap: () {
                       setState(() {
                        
                      _currentIndex=2;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          ASSETS.setting,
                          color:  _currentIndex==2?MyColors.primaryColor:MyColors.accentWhite,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Court Reserve",
                          style: Texttheme.subheading.copyWith(color:  _currentIndex==2?MyColors.primaryColor:MyColors.accentWhite,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: InkWell(
                    onTap: () {
                       setState(() {
                        
                      _currentIndex=2;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          ASSETS.setting,
                          color:  _currentIndex==2?MyColors.primaryColor:MyColors.accentWhite,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Setting",
                          style: Texttheme.subheading.copyWith(color:  _currentIndex==2?MyColors.primaryColor:MyColors.accentWhite,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: InkWell(
                    onTap: () {
                       setState(() {
                        
                      _currentIndex=3;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          ASSETS.person,
                          color:  _currentIndex==3?MyColors.primaryColor:MyColors.accentWhite,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Profile",
                          style: Texttheme.subheading.copyWith(color:  _currentIndex==3?MyColors.primaryColor:MyColors.accentWhite),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
