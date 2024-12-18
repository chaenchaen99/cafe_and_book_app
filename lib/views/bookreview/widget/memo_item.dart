import 'package:cafe_and_book/common/utils/date_format_util.dart';
import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/height_and_width.dart';
import '../../../common/widgets/text_widgets.dart';

class MemoItem extends StatelessWidget {
  final DateTime date;
  final String content;
  final VoidCallback onTapMemo;

  const MemoItem({
    super.key,
    required this.date,
    required this.content,
    required this.onTapMemo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapMemo,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(
              text: date.formatDate(),
              color: Colors.black54,
            ),
            height4,
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
