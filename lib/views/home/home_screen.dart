import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import 'widgets/go_to_book_search_screen.dart';
import 'widgets/popular_book_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height40,
            const GoToBookSearchScreen(),
            height20,
            Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, -5),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
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
