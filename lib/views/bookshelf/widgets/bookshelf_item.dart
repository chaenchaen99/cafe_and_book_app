import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/widgets/text_widgets.dart';
import '../../../model/book_response.dart';
import 'reading_state.dart';

class BookshelfItem extends StatelessWidget {
  final Book book;
  const BookshelfItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RoutesName.REVIEW, extra: book),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: book.hashCode,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              width: 90,
              height: 120,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, right: 16, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BookTitle(
                    text: book.title,
                  ),
                  height10,
                  const ReadingStateBadge(state: ReadingState.initial),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
