import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final Color color;
  final double widthFactor;

  // Constructor with optional parameters for color and widthFactor
  const Line({
    super.key,
    this.color = AppColors.contentPrimary30,
    this.widthFactor = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth *
          widthFactor, // Adjust the width based on the screen size
      height: 1.0, // Fixed height for the line
      color: color, // Line color
    );
  }
}
