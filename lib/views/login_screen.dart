import 'package:flutter/material.dart';
import 'package:oraan_flutter/views/create_new_account/create_new_account.dart';
import 'package:oraan_flutter/views/create_new_account/phone_number.dart';
import 'package:oraan_flutter/widgets/custom_button.dart';
import 'package:oraan_flutter/views/password_screen.dart';
import 'package:oraan_flutter/widgets/custom_login_header.dart';
import 'package:oraan_flutter/widgets/custom_password_screen.dart';
import 'package:oraan_flutter/widgets/custom_text.dart';

import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                CustomLoginHeader(),
                CustomText(
                  text: 'Enter phone number registered with Oraan',
                  textColor: Colors.black,
                  textWeight: FontWeight.w400,
                  textFont: 17,
                ),
                CustomPasswordScreen(),
                SizedBox(
                  height: height * 0.2,
                ),
                CustomButton(
                  text: 'CONTINUE',
                  width: width * 0.08,
                  buttonFunction: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PasswordScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomButton(
                  text: 'NEW USER? CREATE ACCOUNT',
                  width: width * 0.08,
                  buttonFunction: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CreateNewAccount(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.02,
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
