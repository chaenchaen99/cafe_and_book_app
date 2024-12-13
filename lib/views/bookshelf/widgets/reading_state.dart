import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/widgets.dart';

import '../../../common/constants/app_colors.dart';

enum ReadingState {
  initial("읽기 전"),
  reading("읽는 중"),
  done("완료");

  final String type;
  const ReadingState(this.type);
}

class ReadingStateBadge extends StatelessWidget {
  final ReadingState state;
  const ReadingStateBadge({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primary.withOpacity(0.9)),
      child: SmallText(
        text: state.type.toString(),
        color: AppColors.white,
      ),
    );
  }
}
