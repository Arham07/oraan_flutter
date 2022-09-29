import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? buttonFunction;
  final double? height;
  final double? width;
  final double? customFontSize;
  final Color? buttonColor;
  final Color? textColor;
  final RawMaterialButton? customRawButton;
  final FontWeight? fontWeight;

  CustomButton(
      {Key? key,
        required this.text,
        this.buttonFunction,
        this.height,
        this.width,
        this.customFontSize,
        this.buttonColor, this.customRawButton, this.fontWeight, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: height ?? MediaQuery.of(context).size.height * 0.057,
      padding: EdgeInsets.symmetric(
        horizontal: width ?? MediaQuery.of(context).size.width * 0.12,

      ),
           child: RawMaterialButton(
        fillColor: buttonColor ?? Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 0,
        onPressed: buttonFunction,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: fontWeight??FontWeight.w500,
              color:textColor?? Colors.white,
              fontSize: customFontSize ?? 16),
        ),
      ),
    );
  }
}
