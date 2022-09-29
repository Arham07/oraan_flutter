import 'package:flutter/material.dart';
import 'package:oraan_flutter/views/create_new_account/phone_number.dart';
import 'package:oraan_flutter/widgets/custom_password_screen.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stepper(
          elevation: 0,
          steps: getStep(),
          type: StepperType.horizontal,
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getStep().length - 1;
            if (isLastStep) {
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }),
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          controlsBuilder: (BuildContext context, ControlsDetails controls) {
            return Column(
              children: <Widget>[
                SizedBox(
                  height: height * 0.35,
                ),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: controls.onStepContinue,
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: controls.onStepContinue,
                    child: const Text(
                      'ALREADY A USER> LOG IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.0,
                ),
                TextButton(
                  onPressed: controls.onStepContinue,
                  child: const Text(
                    'CONTACT US',
                    style: TextStyle(fontSize: 16, color: Colors.cyan),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Step> getStep() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: Text('2'),
            content: PhoneNumber()),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text('7'),
            content: Container(
              child: Text('2md '),
            )),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Text('fafa'),
            content: Container(
              child: Text('3rd '),
            )),
      ];
}
