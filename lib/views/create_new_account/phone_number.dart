import 'package:flutter/material.dart';

import '../../widgets/custom_password_screen.dart';
import '../../widgets/custom_text.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _numberEditingController =
      TextEditingController();
  final TextEditingController _nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: CustomText(
            text: 'What is your phone number?',
            textWeight: FontWeight.w400,
            textColor: Colors.black,
            textFont: 20,
          ),
        ),
        CustomPasswordScreen(
          numberEditingController: _numberEditingController,
          nameEditingController: _nameEditingController,
        ),
      ],
    );
  }
}
