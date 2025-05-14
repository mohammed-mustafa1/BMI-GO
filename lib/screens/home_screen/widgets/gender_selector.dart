import 'package:bmi_go/screens/home_screen/widgets/gender_button.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({
    super.key,
    required this.isMale,
    this.maleTap,
    this.femaleTap,
  });

  final bool isMale;
  final Function()? maleTap;
  final Function()? femaleTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderButton(
          isMale: isMale,
          text: 'Male',
          icon: Icons.male,
          onTap: maleTap,
        ),
        SizedBox(width: 16),
        GenderButton(
            isMale: !isMale,
            text: 'Female',
            icon: Icons.female,
            onTap: femaleTap),
      ],
    );
  }
}
