import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff4B4E5C),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
