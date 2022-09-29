import 'package:flutter/material.dart';
import 'package:oraan_flutter/widgets/custom_password_screen.dart';
import 'package:oraan_flutter/widgets/custom_text.dart';

import '../../widgets/custom_button.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children:  [
        Align(
          alignment: Alignment.topLeft,
          child: CustomText(
            text: 'What is your phone number?',
            textWeight: FontWeight.w400,
            textColor: Colors.black,
            textFont: 20,
          ),
        ),
        CustomPasswordScreen(),

      ],
    );
  }
}
