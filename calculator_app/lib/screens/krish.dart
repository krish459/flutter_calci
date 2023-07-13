import 'package:calculator_app/utlis/color.dart';
import 'package:flutter/material.dart';

class KPhoto extends StatefulWidget {
  const KPhoto({super.key});

  @override
  State<KPhoto> createState() => _KPhotoState();
}

class _KPhotoState extends State<KPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Krish Ki practice'),
        centerTitle: true,
        backgroundColor: kGreen,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kBlue, kGreen],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image.asset(
          'assets/images/Krish_Shah_Computer.jpg',
          fit: BoxFit.cover,
          height: double.maxFinite,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
