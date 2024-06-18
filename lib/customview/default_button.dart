import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';

class DefaultButton extends StatelessWidget {
  final String btnText;
  final String image;
  final VoidCallback? onpress;
  final Color color;
 DefaultButton({super.key, required this.btnText, required this.image,  this.onpress, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
            Image.asset("$image"),
            SizedBox(width: 6,),
            Text("$btnText",style:Texttheme.title.copyWith(fontWeight: FontWeight.w700,color: MyColors.accentWhite),)
    
          ],
        ),
      ),
    );
  }
}