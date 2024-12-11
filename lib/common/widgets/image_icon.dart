import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SetIcon extends StatelessWidget {
  final String imgPath;
  final double width;
  final double height;
  final Color color;

  const SetIcon({
    super.key,
    required this.imgPath,
    this.width = 25,
    this.height = 25,
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: width,
      height: height,
      color: color,
    );
  }
}
