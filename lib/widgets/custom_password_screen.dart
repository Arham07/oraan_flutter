import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../business_logic/country_provider.dart';
import 'custom_text_field.dart';

class CustomPasswordScreen extends StatefulWidget {
  const CustomPasswordScreen(
      {Key? key,
      required this.numberEditingController,
      required this.nameEditingController})
      : super(key: key);
  final TextEditingController numberEditingController;
  final TextEditingController nameEditingController;

  @override
  State<CustomPasswordScreen> createState() => _CustomPasswordScreenState();
}

class _CustomPasswordScreenState extends State<CustomPasswordScreen> {
  final psList = ['Pakistan (+92)', 'United States (+1)'];
  String? _selectedVal;
  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    final sc = Provider.of<CountryProvider>(context, listen: false);
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
              items: sc.items
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {
                sc.selected = val!;
              }),
        ),
        CustomTextField(
          text: 'Phone Number',
          onChangedFunction: (value) {
            setState(() {
              name = value!;
            });
          },
          onSubmitFunction: (value) {
            setState(() {
              name = value!;
            });
          },
          controller: widget.numberEditingController,
        ),
        CustomTextField(
          text: 'User Name',
          type: TextInputType.text,
          onChangedFunction: (value) {
            setState(() {
              name = value!;
            });
          },
          onSubmitFunction: (value) {
            setState(() {
              name = value!;
            });
          },
          controller: widget.nameEditingController,
        ),
        // Text('${Provider.of<NumberProvider>(context).getNumber}')
      ],
    );
  }
}
