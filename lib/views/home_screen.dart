import 'package:flutter/material.dart';
import 'package:oraan_flutter/widgets/custom_button.dart';
import 'package:oraan_flutter/widgets/custom_text.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../provider/country_provider.dart';
import '../provider/name_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc = Provider.of<SingleSelectCountry>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan.shade50,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Welcome,',
                      textFont: 18,
                      textColor: Colors.black87,
                      textWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: sc.selected,
                      textFont: 18,
                      textColor: Colors.black87,
                      textWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomText(
                      text: Provider.of<NameProvider>(context).getName,
                      textColor: Colors.black87,
                      textWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      height: 550,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.cyan),
                      child: Container(
                        height: 550,
                        width: double.infinity,
                        margin: EdgeInsets.all(1.5),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const CustomText(
                              text: 'Total Oraan Committee amount',
                              textColor: Colors.black,
                              textFont: 16,
                              textWeight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'PKR ',
                                style: TextStyle(
                                    color: Colors.cyan.shade900, fontSize: 22),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '5,000',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomDetailsRow(
                              image: AssetImage('assets/images/oraan.png'),
                              discText: 'Duration',
                              duration: '5 Months',
                            ),
                            const CustomDetailsRow(
                              image: AssetImage('assets/images/oraan.png'),
                              discText: 'Monthly Installment',
                              duration: 'PKR 1,090',
                            ),
                            const CustomDetailsRow(
                              image: AssetImage('assets/images/oraan.png'),
                              discText: 'Preferred Start Month',
                              duration: 'Oct 2022',
                            ),
                            const CustomDetailsRow(
                              image: AssetImage('assets/images/oraan.png'),
                              discText: 'Preferred Payout Month',
                              duration: 'Oct 2022',
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            const CustomText(
                              text: 'In Review 😎',
                              textColor: Colors.black,
                              textWeight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const CustomText(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                              textColor: Colors.black45,
                              textWeight: FontWeight.w400,
                              textFont: 14.5,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const CustomText(
                                text: '⚡ Get Faster Approval ⚡',
                                textWeight: FontWeight.w400,
                                textFont: 18,
                              ),
                            ),
                            CustomButton(
                              text: 'BUILD YOUR PROFILE',
                              width: width * 0.02,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const CustomText(
                                text: 'Contact Us',
                                textWeight: FontWeight.w400,
                                textFont: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Text(
                    //   "Name:${Provider.of<NameProvider>(context).getName}",
                    //   style: TextStyle(fontSize: 32, color: Colors.green),
                    // ),
                  ],
                ),
                const Positioned(
                  top: 60,
                  right: 150,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      'assets/images/oraan.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDetailsRow extends StatelessWidget {
  final AssetImage image;
  final String discText;
  final String duration;
  const CustomDetailsRow({
    super.key,
    required this.image,
    required this.discText,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: image,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              CustomText(
                text: discText,
                textFont: 16,
                textWeight: FontWeight.w400,
                textColor: Colors.black,
              ),
            ],
          ),
          CustomText(
            text: duration,
            textFont: 16,
            textWeight: FontWeight.w400,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
