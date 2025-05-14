import 'package:bmi_go/screens/home_screen/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class WeightAndAgeCard extends StatelessWidget {
  const WeightAndAgeCard({
    super.key,
    required this.text,
    required this.value,
    required this.onAddTap,
    required this.onRemoveTap,
  });
  final String text;
  final Function()? onAddTap;
  final Function()? onRemoveTap;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Color(0xff1D1E33),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(fontSize: 18)),
          Text(
            value.ceil().toString(),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                onPressed: onRemoveTap,
                icon: Icons.remove,
              ),
              SizedBox(width: 8),
              CircleButton(
                onPressed: onAddTap,
                icon: Icons.add,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
