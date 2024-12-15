import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';

class ReviewItem extends StatelessWidget {
  final String content;
  const ReviewItem({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        style: const TextStyle(
          color: Colors.black87,
        ),
        content,
      ),
    );
  }
}
