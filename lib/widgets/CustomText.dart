// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = AppConstants.titleFontSize,
    this.fontWeight = FontWeight.bold,
    this.color = AppConstants.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
