import 'package:bmi_go/screens/result_screen/result_screen.dart';
import 'package:bmi_go/screens/home_screen/widgets/custom_button.dart';
import 'package:bmi_go/screens/home_screen/widgets/gender_selector.dart';
import 'package:bmi_go/screens/home_screen/widgets/height_selector.dart';
import 'package:bmi_go/screens/home_screen/widgets/weight_and_age_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isMale = true;
  double height = 0;
  double weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // Gender Selector
          Expanded(
            child: GenderSelector(
              isMale: isMale,
              maleTap: () {
                setState(() {
                  isMale = true;
                });
              },
              femaleTap: () {
                setState(() {
                  isMale = false;
                });
              },
            ),
          ),
          SizedBox(height: 16),

          // Height Selector
          Expanded(
            child: HeightSelector(
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          SizedBox(height: 16),

          // Weight And Age Selector
          Expanded(
              child: Row(
            children: [
              WeightAndAgeCard(
                text: "Weight",
                onAddTap: () {
                  setState(() {
                    weight++;
                  });
                },
                onRemoveTap: () {
                  setState(() {
                    if (weight > 0) weight--;
                  });
                },
                value: weight,
              ),
              SizedBox(width: 16),
              WeightAndAgeCard(
                text: "Age",
                onAddTap: () {
                  setState(() {
                    age++;
                  });
                },
                onRemoveTap: () {
                  setState(() {
                    if (age > 0) age--;
                  });
                },
                value: age.toDouble(),
              )
            ],
          )),
          SizedBox(height: 16),
          // Calculate Button
          CustomButton(
            onTap: () {
              double bmi = weight / ((height / 100) * (height / 100));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmi: bmi,
                    ),
                  ));
            },
          )
        ],
      ),
    );
  }
}
