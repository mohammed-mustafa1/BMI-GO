import 'package:bmi_go/screens/result_screen/widgets/result_budy.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ResultBody(
        bmi: bmi,
      ),
    );
  }
}
