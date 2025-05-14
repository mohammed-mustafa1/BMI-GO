import 'package:flutter/material.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({
    super.key,
    this.onChanged,
    required this.value,
  });
  final Function(double value)? onChanged;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xff1D1E33)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Height"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value.ceil().toString(),
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 2),
              Text('cm'),
            ],
          ),
          Slider(
            activeColor: Color(0xffEB1555),
            inactiveColor: Color(0xff8D8E98),
            value: value,
            max: 220,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
