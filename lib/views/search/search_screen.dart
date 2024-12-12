import 'package:cafe_and_book/common/widgets/circular_background.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/common/widgets/line.dart';
import 'package:cafe_and_book/repository/book/naver_book_repository.dart';
import 'package:cafe_and_book/view_model/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../common/widgets/text_widgets.dart';
import 'widgets/search_result_item.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  int _itemLimit = 40;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _itemLimit += 20;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchViewModelProvider).searchState;

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
                        onSubmitted: (value) {
                          // 엔터 버튼 눌렸을 때 실행
                          ref
                              .read(searchViewModelProvider.notifier)
                              .fetchSearchResult(value);

                          debugPrint(_itemLimit.toString());
                        }),
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
              searchState.when(
                data: (books) => ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemCount:
                      _itemLimit < books.length ? _itemLimit : books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return SearchResultItem(book: book);
                  },
                  separatorBuilder: (context, index) => const Line(),
                ),
                error: (error, stack) => Center(
                  child: Text("에러가 발생했습니다: $error"),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
