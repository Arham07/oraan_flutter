import 'package:flutter/material.dart';

class OCSScreen extends StatelessWidget {
  const OCSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Oraan Committee',
          style: TextStyle(fontSize: 22, height: 1.2, letterSpacing: 0.6),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 15,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomOCSCol(
                descText: 'ACTIVE OCs',
                total: '0',
              ),
              CustomOCSCol(
                descText: 'ENDED OCs',
                total: '0',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOCSCol extends StatelessWidget {
  final String descText;
  final String total;
  const CustomOCSCol({
    super.key,
    required this.descText,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          descText,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
        Text(
          total,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
