import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';

class MainTitleText extends StatelessWidget {
  const MainTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.black.withOpacity(0.8)),
    );
  }
}
