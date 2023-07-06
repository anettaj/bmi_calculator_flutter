import 'package:flutter/material.dart';
class Reuseablecard extends StatelessWidget {
  //consrtuctor
  Reuseablecard({required this.activeColour,required this.cardChild,required this.onPress});
  final Color activeColour;
  final Widget cardChild;
  final void Function() onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: activeColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:cardChild,
      ),
    );
  }
}

