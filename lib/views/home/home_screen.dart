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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 46.0, right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "채연 님 몽글몽글한 저녁입니다. \n오늘은 어떤 책을 읽으실 건가요?",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Image.asset(
                    "assets/icons/mascot.png",
                    width: 100,
                    height: 120,
                  ),
                ],
              ),
            ),
            const GoToBookSearchScreen(),
            const SizedBox(height: 16),
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
