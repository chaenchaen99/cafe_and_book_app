import 'package:cafe_and_book/view_model/bookshelf/bookshelf_view_model.dart';
import 'package:cafe_and_book/views/bookshelf/widgets/bookshelf_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/dropdown_button.dart';
import '../../common/widgets/circular_background.dart';
import '../../common/widgets/line.dart';
import '../../common/widgets/text_widgets.dart';

class BookshelfScreen extends ConsumerStatefulWidget {
  const BookshelfScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookshelfScreenState();
}

class _BookshelfScreenState extends ConsumerState<BookshelfScreen> {
  final ScrollController _scrollController = ScrollController();
  int _itemLimit = 40;
  String sortOption = '최신순';

  @override
  void initState() {
    super.initState();
    _initializeBookshelf();
    _scrollController.addListener(_onScroll);
  }

  void _initializeBookshelf() {
    ref.read(bookshelfViewModelProvider.notifier).fetchMyBooksFromLocalDB();
  }

  void _handleSortChange(String newValue) {
    setState(() {
      sortOption = newValue;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)?.isCurrent == true) {
      _initializeBookshelf(); // 화면이 다시 보일 때 데이터 새로고침
    }
    final mybooksState = ref.watch(bookshelfViewModelProvider).mybooksState;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 12),
            child: CustomDropdownButton(
              value: sortOption,
              options: const ['최신순', '오래된 순'],
              onChanged: _handleSortChange,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const CircularBackground(),
          mybooksState.when(
            data: (books) => ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: _itemLimit < books.length ? _itemLimit : books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return BookshelfItem(book: book);
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
        ],
      ),
    );
  }
}
