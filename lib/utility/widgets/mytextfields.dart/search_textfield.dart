import 'package:flutter/material.dart';
import 'package:sports_caddy/utility/assets.dart';
import 'package:sports_caddy/utility/texttheme.dart';


class SearchTextField extends StatefulWidget {
  final String hinttext;
  final VoidCallback? onTap;
  final bool readOnly;
  const SearchTextField({super.key, required this.hinttext,  this.onTap,  this.readOnly=false});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        onTap:widget.onTap,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          
          suffixIcon: Image.asset(ASSETS.filter,height: 18,width: 18,),
          prefixIcon: Image.asset(ASSETS.search,height: 18,width: 18,),
          hintText: widget.hinttext,
          isDense: true,
          filled: true,
          hintStyle: Texttheme.title,
          fillColor: Color(0xff6A737D),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            //<-- SEE HERE
            borderSide: BorderSide(width: 0, color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            //<-- SEE HERE
            borderSide: BorderSide(width: 0, color: Colors.black),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            //<-- SEE HERE
            borderSide: BorderSide(width: 0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
