import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraan_flutter/home_section.dart';
import 'package:oraan_flutter/widgets/custom_button.dart';
import 'package:oraan_flutter/widgets/custom_text.dart';
import 'package:oraan_flutter/widgets/custom_text_field.dart';
import 'package:oraan_flutter/widgets/custom_login_header.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                CustomLoginHeader(onPressed: () {
                  Navigator.of(context).pop();
                },),
                CustomTextField(
                  text: 'Phone Number',
                  isObscure: _isObscure,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _isObscure = !_isObscure;
                    },
                    child: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Password is 4 to 6 digit long',
                      textFont: 14,
                      textColor: Colors.black,
                      textWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                const CustomText(
                  text: 'FORGOT PASSCODE?',
                  textFont: 16,
                  textWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CustomButton(
                  text: 'LOG IN',
                  width: width * 0.3,
                  buttonFunction:  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.3,
                ),
                CustomButton(
                  text: 'CONTACT US',
                  textColor: Colors.black,
                  fontWeight: FontWeight.w400,
                  buttonColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
