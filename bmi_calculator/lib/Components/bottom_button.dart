import 'package:flutter/material.dart';
import 'constance.dart';

class BottomButton extends StatelessWidget {
  final String bottomText;
  final void Function() onTap;
  BottomButton({required this.bottomText,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            bottomText,
            style: kBottomLabel_textstyle,
          ),
        ),
      ),
    );
  }
}

