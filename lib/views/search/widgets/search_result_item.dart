import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/text_widgets.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.black,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookTitle(
                text: "title",
              ),
              BookDescription(text: "description"),
            ],
          ),
        )
      ],
    );
  }
}
