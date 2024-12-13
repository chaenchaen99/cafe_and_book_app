import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/constants/app_colors.dart';
import '../../common/widgets/height_and_width.dart';
import '../../common/widgets/line.dart';
import '../../common/widgets/pop.dart';
import '../../common/widgets/text_widgets.dart';
import '../../model/book_response.dart';

class BookReviewScreen extends ConsumerStatefulWidget {
  final Book book;
  const BookReviewScreen({
    super.key,
    required this.book,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookReviewScreenState();
}

class _BookReviewScreenState extends ConsumerState<BookReviewScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // TabController 초기화
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // 메모리 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => handlePop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: MediumText(
                    text: "저장하기",
                    weight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  BookTitle(
                    text: widget.book.title,
                    weight: FontWeight.bold,
                  ),
                  height10,
                  Hero(
                    tag: widget.book.hashCode,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      width: 150,
                      height: 200,
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
                          widget.book.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: "책 정보"),
                      Tab(text: "내 메모"),
                    ],
                  ),
                ]),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(), // 탭 내 스크롤 방지
          children: [
            // 첫 번째 탭: 책 정보
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/author.png",
                        width: 16,
                        height: 16,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "저자",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  BookInfoText(text: widget.book.author),
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/date.png",
                        width: 14,
                        height: 14,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "출판사",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  BookInfoText(text: widget.book.publisher),
                  height10,
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/description.png",
                        width: 16,
                        height: 16,
                        color: AppColors.contentPrimary,
                      ),
                      width4,
                      const MediumText(
                        text: "책 설명",
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  height4,
                  BookInfoText(text: widget.book.description),
                ],
              ),
            ),
            // 두 번째 탭: 내 메모 (ListView)
            ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: 100,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: 200,
                  child: Text("$index"),
                );
              },
              separatorBuilder: (context, index) => const Line(),
            ),
          ],
        ),
      ),
    );
  }
}
