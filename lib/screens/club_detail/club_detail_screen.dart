import 'package:flutter/material.dart';
import 'package:sports_caddy/screens/club_detail/tab/about_tab.dart';
import 'package:sports_caddy/screens/club_detail/tab/court_reserve_tab.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class ClubDetailScreen extends StatefulWidget {
  const ClubDetailScreen({super.key});

  @override
  State<ClubDetailScreen> createState() => _ClubDetailScreenState();
}

class _ClubDetailScreenState extends State<ClubDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MyColors.defaultBlackColor,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  IconButton(
                      onPressed: () {
                        // Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: MyColors.neturalRed,
                      )),
                ],
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back)),
                backgroundColor: MyColors.defaultBlackColor,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text(
                  "Club Details",
                  style: Texttheme.heading2,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 141,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/club_detail.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Text(
                            "Downright Smashing",
                            style: Texttheme.heading1,
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
                              Text(
                                "10:00 AM To 12:00 PM ",
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
                                Icons.location_on,
                                color: MyColors.accentWhite,
                              ),
                              Expanded(
                                child: Text(
                                  "Flushing Meadow - Corona Park, Flushing, United States (1km Away)",
                                  style: Texttheme.title,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Color(0xff07D03F)),
                              Text(
                                "4.2 - 1220 Reviews",
                                style: Texttheme.subheading
                                    .copyWith(color: Color(0xff07D03F)),
                              ),
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: MyColors.accentWhite,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TabBar(
                            labelColor: MyColors.accentWhite,
                            unselectedLabelColor: Color(0xff6A737D),
                            indicatorColor: MyColors.primaryColor,
                            indicatorWeight: 4,
                            indicatorPadding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            labelPadding: EdgeInsets.zero,
                            tabs: [
                              SizedBox(height: 40, child: Text("About")),
                              SizedBox(
                                  height: 40, child: Text("Court Reserve")),
                              SizedBox(height: 40, child: Text("Reviews")),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              AboutScreen(),
              CourtReserveScreen(),
              Text(
                "Review Tab",
                style: Texttheme.heading1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
