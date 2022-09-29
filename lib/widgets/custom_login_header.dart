import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomLoginHeader extends StatelessWidget {
  final void Function()? onPressed;
  const CustomLoginHeader({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: height * 0.04,
        ),
        const CircleAvatar(
          radius: 36,
          backgroundImage: AssetImage(
            'assets/images/oraan.png',
          ),
          backgroundColor: Colors.transparent,
        ),
        const CustomText(
          text: 'oraan',
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.arrow_back,
                  size: 22,
                ),
              ),
              const CustomText(
                text: 'Log in',
                textColor: Colors.black,
                textWeight: FontWeight.w400,
                textFont: 26,
              ),
              SizedBox(
                width: width * 0.1,
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.015,
        ),
      ],
    );
  }
}
