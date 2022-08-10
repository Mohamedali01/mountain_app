import 'package:flutter/material.dart';

class CustomLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  const CustomLargeText(this.text,
      {Key? key, this.color = Colors.black, this.fontSize = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
