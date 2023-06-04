import 'package:flutter/material.dart';
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({Key? key, this.color= const Color(0XFF332d2b),required this.text,this.height=1.2, this.size=12,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: size,
        height: height
      ),
    );
  }
}
