import 'package:flutter/material.dart';

import '../views/create_new_account/create_new_account.dart';
import '../views/password_screen.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomPasswordScreen extends StatefulWidget {
  const CustomPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CustomPasswordScreen> createState() => _CustomPasswordScreenState();
}

class _CustomPasswordScreenState extends State<CustomPasswordScreen> {
  final psList = ['Pakistan (+92)', 'United States (+1)'];
  String? _selectedVal;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: width * 0.06, right: width * 0.06, top: height * 0.03),
          child: DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: 'Country Code',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan, width: 0.0),
                ),
              ),
              value: _selectedVal,
              items: psList
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                val = _selectedVal as String;
              }),
        ),
        CustomTextField(
          text: 'Phone Number',
        ),
      ],
    );
  }
}
