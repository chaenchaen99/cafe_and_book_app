import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BookTitle extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;

  const BookTitle({
    super.key,
    required this.text,
    this.weight = FontWeight.w400,
    this.color = AppColors.booktitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: weight,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class BookDescription extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;

  const BookDescription({
    super.key,
    required this.text,
    this.weight = FontWeight.w400,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: weight,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class BookInfoText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;

  const BookInfoText({
    super.key,
    required this.text,
    this.weight = FontWeight.w400,
    this.color = AppColors.booksDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: weight,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;

  const MediumText({
    super.key,
    required this.text,
    this.weight = FontWeight.w400,
    this.color = AppColors.booktitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: weight,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;

  const SmallText({
    super.key,
    required this.text,
    this.weight = FontWeight.w400,
    this.color = AppColors.contentPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: weight,
      ),
    );
  }
}
