import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class CategoryCard extends StatelessWidget {
  final String image;
  final String text;
  const CategoryCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 60,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color(0XffCFD8E5),
            radius: 30,
            child: Image.asset(image.toString()),
          ),
          Text(
            text,
            style: Texttheme.title,
          )
        ],
      ),
    );
  }
}
