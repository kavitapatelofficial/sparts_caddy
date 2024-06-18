import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class OutlineButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;

  const OutlineButtonWidget({super.key, required this.text, this.onPress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4),
        margin: EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: MyColors.accentWhite)
        ),
        height: 20,
        child: Center(
            child: Text(
            '$text',
            style: Texttheme.subheading,
          )),
      ),
    );
  }
}
