import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  
  final VoidCallback? onpress;
  final Color color;
 CustomButton({super.key, required this.btnText, this.onpress, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Center(child: Text("$btnText",style:Texttheme.title.copyWith(fontWeight: FontWeight.w700,color: MyColors.accentWhite),)),
      ),
    );
  }
}