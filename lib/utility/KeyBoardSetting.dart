

import 'package:flutter/cupertino.dart';

class KeyBoardSetting{

  static hideKeyBoard(context){
    FocusScope.of(context).requestFocus(new FocusNode());

  }
}