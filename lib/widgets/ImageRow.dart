// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageRow extends StatelessWidget {
  final String image1;
  final String image2;

  const ImageRow({
    super.key,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image1,
          width: 100,
          height: 100,
        ),
        const SizedBox(width: 20),
        Image.asset(
          image2,
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
