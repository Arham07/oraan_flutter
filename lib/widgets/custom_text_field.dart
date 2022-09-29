import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final bool? isObscure;
  final TextInputType? type;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.text,
    this.isObscure,
    this.type, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: width * 0.06, right: width * 0.06, top: height * 0.03),
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(8),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.cyan, width: 0.0),
          ),suffixIcon: suffixIcon?? SizedBox.shrink(),),
        obscureText: isObscure ?? false,
        keyboardType: type??TextInputType.number,
      ),
    );
  }
}
