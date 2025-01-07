import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/height_and_width.dart';
import 'package:cafe_and_book/view_model/bookcafe/bookcafe_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../common/widgets/text_widgets.dart';

class BookcafeScreen extends ConsumerStatefulWidget {
  const BookcafeScreen({super.key});

  @override
  ConsumerState<BookcafeScreen> createState() => _BookcafeScreenState();
}

class _BookcafeScreenState extends ConsumerState<BookcafeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(bookCafeViewModelProvider.notifier)
          .fetchAndCombineBookCafeData();
    });
  }

  Future<void> _openNaverMap(String query) async {
    final encodedQuery = Uri.encodeComponent(query);
    final url = 'https://map.naver.com/v5/search/$encodedQuery';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(bookCafeViewModelProvider).bookCafeListState.when(
            data: (bookCafeList) {
              return SingleChildScrollView(
                child: Column(children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        child: Container(),
                      ),
                      Positioned(
                        child: Image.asset(
                          "assets/images/bookcafe_bg.jpg",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: 270,
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 16,
                        child: Text(
                          "때로는 분위기 좋은 카페에서 책을 읽어보세요.\n책 읽기 좋은 카페를 추천드릴게요 :)",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 1.0,
                                  offset: const Offset(1.0, 1.0),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 250.0),
                        child: Column(
                          children: bookCafeList.map((bookCafe) {
                            return Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmallText(
                                      text: bookCafe!.bookCafeName,
                                      weight: FontWeight.bold,
                                    ),
                                    SmallText(text: bookCafe.address),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: GestureDetector(
                                        onTap: () => _openNaverMap(
                                            bookCafe.bookCafeName),
                                        child: const Row(
                                          children: [
                                            Text(
                                              "위치보기",
                                              style: TextStyle(
                                                color: AppColors.linkText,
                                                fontSize: 12.0,
                                                decorationColor:
                                                    AppColors.linkText,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            Icon(
                                              Icons.location_on,
                                              size: 16.0,
                                              color: AppColors.linkText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // 이미지 리스트는 다른 ListView로 처리
                                    SizedBox(
                                      height: 260, // 이미지 영역 크기 제한
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: bookCafe.thumbnails.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                bookCafe.thumbnails[index],
                                                fit: BoxFit.cover,
                                                width: 160,
                                                height: 220,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  // 이미지 로딩에 실패한 경우 아무 것도 표시하지 않음
                                                  return const SizedBox
                                                      .shrink(); // 빈 공간을 아예 없애기
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ]),
              );
            },
            error: (e, stack) {
              return null;
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
