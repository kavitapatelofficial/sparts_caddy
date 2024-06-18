import 'package:flutter/material.dart';
import 'package:sports_caddy/screens/club_detail/club_detail_screen.dart';
import 'package:sports_caddy/utility/widgets/cards/club_near_me_card.dart';
import 'package:sports_caddy/utility/widgets/custom_appbar.dart';
import 'package:sports_caddy/utility/widgets/mytextfields.dart/search_textfield.dart';

class ClubNearMeScreen extends StatefulWidget {
  const ClubNearMeScreen({super.key});

  @override
  State<ClubNearMeScreen> createState() => _ClubNearMeScreenState();
}

class _ClubNearMeScreenState extends State<ClubNearMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CustomAppBar(
            title: "Clubs Near Me",
          ),
          SearchTextField(
            hinttext: "Search Club",
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
          ClubNearMeCard(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ClubDetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
