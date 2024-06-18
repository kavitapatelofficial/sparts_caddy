import 'package:flutter/material.dart';

class MyHeadingText extends StatelessWidget {
  final String text1;
  final String text2;
  const MyHeadingText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$text1"),
        Text("$text2"),
      ],
    );
  }
}