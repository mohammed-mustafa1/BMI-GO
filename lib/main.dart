import 'package:bmi_go/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiGo());
}

class BmiGo extends StatelessWidget {
  const BmiGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
