import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    required this.isMale,
  });
  final String text;
  final IconData icon;
  final Function()? onTap;
  final bool isMale;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isMale ? Color(0xffEB1555) : Color(0xff1D1E33),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
