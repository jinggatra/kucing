import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LogoWithTitle extends StatelessWidget {
  final String title;
  final String logoPath;

  const LogoWithTitle({
    Key? key,
    required this.title,
    required this.logoPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: AppConstants.titleFontSize,
            fontWeight: FontWeight.bold,
            color: AppConstants.textColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Image.asset(
          logoPath,
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
