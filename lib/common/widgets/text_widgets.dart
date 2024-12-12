import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MediumText extends StatelessWidget {
  final text;
  final weight;
  final color;

  const MediumText({
    super.key,
    this.text,
    this.weight = FontWeight.w400,
    this.color = AppColors.contentPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: weight,
      ),
    );
  }
}
