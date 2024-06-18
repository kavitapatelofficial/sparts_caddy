import 'package:flutter/material.dart';
class BouncingButton extends StatefulWidget {

 late Widget childWidget ;
  late var fun ;
 int timeDuration =0;
  BouncingButton(Widget childWidget,var fun , int timeDuration){

    this.childWidget = childWidget;
    this.fun = fun;
    this.timeDuration = timeDuration ;
  }

  @override
  _BouncingButtonState createState() => _BouncingButtonState(childWidget,fun,timeDuration);
}
class _BouncingButtonState extends State<BouncingButton> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  late Widget childWidget ;
 late var fun;
 int timeDuration =0;
 static bool isClickable = true;
  _BouncingButtonState(Widget childWidget,var fun,int timeDuration){

    this.childWidget = childWidget;
    this.fun = fun;
   this.timeDuration = timeDuration ;

  }

  @override
  void initState() {


    if(isClickable){
      _controller = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: timeDuration,
        ),
        lowerBound: 0.0,
        upperBound: 0.9,
      )..addListener(() {


        if(_controller.status.index == 0){
          setState(fun);
        }
        else{
          setState((){

          });
        }


      });
    }


    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return  Center(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: (){

          print('isClickable '+isClickable.toString());

          if(isClickable){

            isClickable= false;

            _tapDown();

            Future.delayed(Duration(milliseconds: (timeDuration/4).toInt()),(){
              _tapUp();isClickable= true;
            });
          }


        },
        child: Transform.scale(
          scale: _scale,
          child: childWidget,
        ),
      ),
    );
  }
  void _tapDown() {
    _controller.forward();
  }
  void _tapUp() {
    _controller.reverse();
  }
}