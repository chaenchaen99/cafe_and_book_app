import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/bookreview/bookreview_view_model.dart';

class CustomDropdownButton extends ConsumerStatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  ConsumerState<CustomDropdownButton> createState() =>
      _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends ConsumerState<CustomDropdownButton> {
  String sortOption = '최신순';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: sortOption,
      underline: const SizedBox(),
      isDense: true,
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(20),
      dropdownColor: AppColors.background,
      icon: const Padding(
        padding: EdgeInsets.only(left: 0.0), // 아이콘 왼쪽에 패딩 추가
        child: Icon(Icons.arrow_drop_down),
      ),
      items: <String>['최신순', '오래된 순']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Center(
            child: SmallText13(
              text: value,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            sortOption = newValue;
          });
          // TODO: 정렬
          ref
              .read(bookReviewViewModelProvider.notifier)
              .getSortedList(newValue);
        }
      },
    );
  }
}
