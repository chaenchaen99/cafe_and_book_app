import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showCustomSnackBar(BuildContext context, String message,
    {bool goToBookShelf = true}) {
  final snackBar = SnackBar(
    margin: const EdgeInsets.only(right: 12, left: 12, bottom: 24),
    behavior: SnackBarBehavior.floating,
    backgroundColor: AppColors.second,
    content: Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        height: 20,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_box,
              color: AppColors.background,
            ),
            width4,
            SmallText(
              text: message,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // 라운드 모서리
    ),
    action: goToBookShelf
        ? SnackBarAction(
            label: "서재로 이동",
            textColor: AppColors.background,
            disabledTextColor: AppColors.hintColor,
            onPressed: () => {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.goNamed(RoutesName.BOOKSHELF);
                  })
                })
        : null,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
