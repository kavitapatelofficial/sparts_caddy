import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sports_caddy/animation/pageanimation/ScaleRoute.dart';
import 'package:sports_caddy/screens/club_near_me_screen.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/texttheme.dart';
import 'package:sports_caddy/utility/widgets/cards/category_card.dart';
import 'package:sports_caddy/utility/widgets/cards/event_card.dart';
import 'package:sports_caddy/utility/widgets/cards/new_classes_card.dart';
import 'package:sports_caddy/utility/widgets/cards/reserve_history_card.dart';
import 'package:sports_caddy/utility/widgets/cards/reserve_history_card2.dart';
import 'package:sports_caddy/utility/widgets/mytextfields.dart/search_textfield.dart';
import 'package:sports_caddy/utility/widgets/row_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          // header section
          ListTile(
            leading: Image.asset(ASSETS.profile),
            trailing: Image.asset(ASSETS.notifications),
            title: Text(
              "Hello Jerry!",
              style: Texttheme.heading1,
            ),
            subtitle: Text(
              "109 C Runwal Plaza, Thane, Mumbai",
              style: Texttheme.title,
            ),
          ),
          // search section
          SearchTextField(
            readOnly: true,
            hinttext: "search here",
            onTap: () {
              Navigator.of(context).push(ScaleRoute(ClubNearMeScreen()));
            },
          ),

          SizedBox(
            height: 30,
          ),
          // carousel section here
          CarouselSlider(
            options: CarouselOptions(
              height: 136.0,
              viewportFraction: 0.8,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
            ),
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(i.toString()))),
                  );
                },
              );
            }).toList(),
          ),
          // Category section
          RowTextScreen(text1: "Categories", text2: ""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                        image: "${ASSETS.icon1}", text: "Member Directory");
                  }),
            ),
          ),

          // Reserve History section
          RowTextScreen(
            text1: "Reserve History",
            text2: "View All",
            onpress: () {},
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return index == 14 ? ReserveHistoryTwo() : ReserveHistory();
                }),
          ),
          // Reserve History section
          RowTextScreen(
            text1: "New Events",
            text2: "View All",
            onpress: () {},
          ),

          EventCard(),
          EventCard(),

          // Reserve History section
          RowTextScreen(
            text1: "New Classes",
            text2: "View All",
            onpress: () {},
          ),

          NewClassesCard(),
          NewClassesCard(),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
