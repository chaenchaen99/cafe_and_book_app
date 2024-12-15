import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/pop.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showCustomModal(
  BuildContext context, {
  required String title,
  required String content,
  required String firstButtonText,
  required String secondButtonText,
  required VoidCallback firstButtonTapped,
  required VoidCallback secondButtonTapped,
  String iconPath = 'assets/icons/memo.png',
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      iconPath,
                      width: 20,
                      height: 20,
                    ),
                    width4,
                    MediumText(text: title),
                  ],
                ),
                height16,
                Text(content),
                height20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: firstButtonTapped,
                      child: Container(
                        width: 80,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(firstButtonText),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: secondButtonTapped,
                      child: Container(
                        width: 80,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.second,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            secondButtonText,
                            style: const TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
