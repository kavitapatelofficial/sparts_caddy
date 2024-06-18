import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text(
        "$title",
        style: Texttheme.heading2,
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }
}
