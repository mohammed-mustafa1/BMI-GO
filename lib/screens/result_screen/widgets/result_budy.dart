import 'package:bmi_go/screens/home_screen/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Result',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(24),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1D1E33),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    getBmiCategory(bmi),
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Your body weight is absolutely ${getBmiCategory(bmi)},Good job',
                      style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          CustomButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// under weight <18.5
// normal weight 18.5-24.9
// overweight 25-29.9
// obese >30

String getBmiCategory(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return 'Normal';
  } else if (bmi >= 25 && bmi <= 29.9) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}
