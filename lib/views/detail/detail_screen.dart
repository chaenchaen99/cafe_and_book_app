import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/view_model/detail/detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/widgets/pop.dart';
import '../../common/widgets/snackbar.dart';

class DetailScreen extends ConsumerWidget {
  final BookModel book;
  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  onTap: () async {
                    await ref
                        .read(detailViewModelProvider.notifier)
                        .saveBookToBookShelf(book);
                    if (ref.watch(detailViewModelProvider).isAlreadySaved) {
                      showCustomSnackBar(context, "이미 저장되어있는 책입니다.");
                    } else {
                      showCustomSnackBar(context, "책이 서재에 저장되었습니다.");
                    }
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
                  BookInfoText(text: book.author),
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
                  BookInfoText(text: book.publisher),
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
                  BookInfoText(text: book.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
