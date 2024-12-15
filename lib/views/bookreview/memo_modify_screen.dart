import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/snackbar.dart';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/view_model/bookreview/bookreview_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/constants/app_colors.dart';
import '../../common/widgets/pop.dart';
import '../../common/widgets/text_widgets.dart';

class MemoModifyScreen extends ConsumerStatefulWidget {
  final BookModel book;
  const MemoModifyScreen({super.key, required this.book});

  @override
  ConsumerState<MemoModifyScreen> createState() => _MemoModifyScreenState();
}

class _MemoModifyScreenState extends ConsumerState<MemoModifyScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

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
                  ref
                      .read(bookReviewViewModelProvider.notifier)
                      .addMemo(widget.book.title, _textEditingController.text);

                  showCustomSnackBar(context, "메모가 저장되었습니다.");
                  handlePop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: MediumText(
                    text: "저장",
                    weight: FontWeight.w500,
                    color: AppColors.contentPrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MediumText(text: "내 메모"),
            height10,
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                minLines: 10, // 최소 한 줄로 시작
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
