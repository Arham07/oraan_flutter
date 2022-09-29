import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textFont;
  final FontWeight? textWeight;
  const CustomText(
      {Key? key,
      required this.text,
       this.textColor,
       this.textFont,
       this.textWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor ?? Colors.cyan,
          fontSize: textFont ?? 22,
          fontWeight: textWeight ?? FontWeight.w500),
    );
  }
}
