import 'package:flutter/material.dart';
import 'constance.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.label,required this.icon});
  late final String label;
  late final IconData icon;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,
          style:kLabel_textstyle,
        )
      ],
    );
  }
}


class FloatingButton extends StatelessWidget {
  FloatingButton({required this.iconz,required this.click});
 final IconData iconz;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: click,
      backgroundColor: Color(0xff4c4f5e) ,
      child:  Icon(
       iconz ,
        color: Colors.white,
      ),
    );
  }
}

