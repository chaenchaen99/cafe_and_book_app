import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/constants/app_icons.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/widgets/pop.dart';
import '../../model/book_response.dart';

class DetailScreen extends StatelessWidget {
  final Book book;
  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () => handlePop(context),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    handlePop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: MediumText(
                      text: "저장하기",
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookTitle(
                text: book.title,
                weight: FontWeight.bold,
              ),
              height10,
              Hero(
                tag: book.hashCode,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      book.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/author.png",
                        width: 16,
                        height: 16,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "저자",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  SmallText(text: book.author),
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/date.png",
                        width: 14,
                        height: 14,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "출판사",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  SmallText(text: book.publisher),
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/description.png",
                        width: 16,
                        height: 16,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "책 설명",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  SmallText(text: book.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
