import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class RowTextScreen extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback? onpress;
  RowTextScreen(
      {super.key, required this.text1, required this.text2, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: Texttheme.heading2,
          ),
          TextButton(
            onPressed: onpress,
            child: Text(
              text2,
              style: Texttheme.title,
            ),
          )
        ],
      ),
    );
  }
}
