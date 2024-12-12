import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/constants/app_texts.dart';

class GoToBookSearchScreen extends StatefulWidget {
  const GoToBookSearchScreen({super.key});

  @override
  State<GoToBookSearchScreen> createState() => _GoToBookSearchScreenState();
}

class _GoToBookSearchScreenState extends State<GoToBookSearchScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: GestureDetector(
        onTap: () => context.pushNamed(RoutesName.SEARCH),
        child: Row(
          children: [
            Expanded(
              child: Stack(children: [
                Container(
                  height: 42,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.contentPrimary,
                      width: 1,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 40),
                    child: MediumText(
                      text: "검색하고 싶은 책을 입력해보세요:)",
                      color: AppColors.hintColor,
                    ),
                  ),
                ),
                const Positioned(
                  right: 12,
                  top: 0,
                  bottom: 0,
                  child: Icon(Icons.search_rounded),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
