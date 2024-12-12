import 'package:cafe_and_book/common/widgets/circular_background.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants/app_colors.dart';
import '../../common/widgets/text_widgets.dart';
import 'widgets/search_result_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // FocusNode 생성

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 12, right: 16, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: TextField(
                      controller: _textController,
                      focusNode: _focusNode,
                      decoration: const InputDecoration(
                        hintText: "검색하고싶은 책을 입력해보세요:)",
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),
                const Width(width: 10),
                GestureDetector(
                  onTap: () {
                    if (context.canPop()) {
                      context.pop();
                    }
                  },
                  child: const MediumText(
                    text: "취소",
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(children: [
              const CircularBackground(),
              ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: 50, //TODO: need to fix real data
                itemBuilder: (context, index) {
                  return const SearchResultItem();
                },
                separatorBuilder: (context, index) => const Line(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
