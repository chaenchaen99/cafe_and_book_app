import 'package:flutter/material.dart';

import '../../../common/widgets/text_widgets.dart';
import '../../../model/book_response.dart';

class SearchResultItem extends StatelessWidget {
  final Book book;
  const SearchResultItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12, right: 16, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookTitle(
                  text: book.title,
                ),
                BookDescription(
                  text: book.description,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
