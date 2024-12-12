import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/circular_background.dart';
import 'widgets/go_to_book_search_screen.dart';
import 'widgets/popular_book_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height40,
            GoToBookSearchScreen(),
            height20,
            Stack(
              children: [
                Positioned.fill(
                  child: CircularBackground(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: PopularBookList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
