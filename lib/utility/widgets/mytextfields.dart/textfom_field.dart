import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/my_colors.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class MyTextFormField extends StatefulWidget {
  final String hinttext;
  final VoidCallback? onTap;
  final bool readOnly;
  const MyTextFormField({super.key, required this.hinttext,  this.onTap,  this.readOnly=false});

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap:widget.onTap,
      readOnly: widget.readOnly,
      decoration: InputDecoration(
        
        suffixIcon:Icon(Icons.calendar_month,color: MyColors.accentWhite,),
       
        hintText: widget.hinttext,
        isDense: true,
        filled: true,
        hintStyle: Texttheme.title,
        fillColor: Color(0xff6A737D),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          //<-- SEE HERE
          borderSide: BorderSide(width: 0, color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          //<-- SEE HERE
          borderSide: BorderSide(width: 0, color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          //<-- SEE HERE
          borderSide: BorderSide(width: 0, color: Colors.black),
        ),
      ),
    );
  }
}
