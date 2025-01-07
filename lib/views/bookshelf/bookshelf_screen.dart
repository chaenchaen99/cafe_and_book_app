import 'package:cafe_and_book/common/constants/app_enums.dart';
import 'package:cafe_and_book/view_model/bookshelf/bookshelf_view_model.dart';
import 'package:cafe_and_book/views/bookshelf/widgets/bookshelf_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/dropdown_button.dart';
import '../../common/widgets/circular_background.dart';
import '../../common/widgets/line.dart';

class BookshelfScreen extends ConsumerStatefulWidget {
  const BookshelfScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookshelfScreenState();
}

class _BookshelfScreenState extends ConsumerState<BookshelfScreen> {
  final ScrollController _scrollController = ScrollController();
  int _itemLimit = 40;

  @override
  void initState() {
    super.initState();
    _initializeBookshelf();
    _scrollController.addListener(_onScroll);
  }

  void _initializeBookshelf() {
    ref.read(bookshelfViewModelProvider.notifier).fetchMyBooksFromLocalDB();
  }

  void _handleSortChange(SortOptions newValue) {
    ref.read(bookshelfViewModelProvider.notifier).updateSortedList(newValue);
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
    final bookshelfState = ref.watch(bookshelfViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 12),
            child: CustomDropdownButton(
              value: bookshelfState.sortOption.option,
              options:
                  SortOptions.values.map((option) => option.option).toList(),
              onChanged: (newValue) => _handleSortChange(
                  SortOptions.values.firstWhere((e) => e.option == newValue)),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const CircularBackground(),
          ref.watch(bookshelfViewModelProvider).mybooksState.when(
                data: (books) => books.isNotEmpty
                    ? ListView.separated(
                        controller: _scrollController,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        itemCount: _itemLimit < books.length
                            ? _itemLimit
                            : books.length,
                        itemBuilder: (context, index) {
                          final book = books[index];

                          return BookshelfItem(book: book);
                        },
                        separatorBuilder: (context, index) => const Line(),
                      )
                    : const Center(
                        child: Text("서재에 담긴 책이 없습니다."),
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
