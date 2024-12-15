import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:cafe_and_book/view_model/bookreview/bookreview_view_model.dart';
import 'package:cafe_and_book/view_model/bookshelf/bookshelf_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants/app_colors.dart';
import '../../common/widgets/height_and_width.dart';
import '../../common/widgets/line.dart';
import '../../common/widgets/pop.dart';
import '../../common/widgets/text_widgets.dart';
import 'widget/reading_state_badge.dart';
import 'widget/memo_item.dart';

class BookReviewScreen extends ConsumerStatefulWidget {
  final BookModel book;
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
  late bool tabStateIsMemo;

  @override
  void initState() {
    super.initState();
    // TabController 초기화
    _tabController = TabController(length: 2, vsync: this);
    tabStateIsMemo = false;

    // 탭 변경을 감지하여 tabStateIsMemo를 업데이트
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        setState(() {
          tabStateIsMemo = true;
        });
      } else {
        setState(() {
          tabStateIsMemo = false;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(bookReviewViewModelProvider.notifier)
          .fetchMemos(widget.book.title);
    });
  }

  @override
  void dispose() {
    _tabController.dispose(); // 메모리 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookMemos = ref.watch(bookReviewViewModelProvider).bookReviewsState;

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
                onTap: () async {
                  ref
                      .read(bookshelfViewModelProvider.notifier)
                      .deleteMyBookFromBookShelf(widget.book.title);
                  handlePop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: MediumText(
                    text: "삭제",
                    weight: FontWeight.w500,
                    color: AppColors.contentPrimary,
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
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: BookTitle(
                        text: widget.book.title,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                  height10,
                  Hero(
                    tag: widget.book.hashCode,
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 160,
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
                  ),
                  height16,
                  Center(
                    child: ReadingStateBadge(widget.book),
                  ),
                  height16,
                  TabBar(
                    controller: _tabController,
                    labelColor: AppColors.tabBarText,
                    unselectedLabelColor: AppColors.hintColor,
                    indicatorColor: AppColors.tabBarText,
                    indicatorWeight: 4.0,
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    dividerColor: AppColors.tabBarText.withOpacity(0.6),
                    tabs: const [
                      Tab(text: "책 정보"),
                      Tab(text: "내 메모"),
                    ],
                  ),
                  height10,
                  tabStateIsMemo
                      ? SizedBox(
                          height: 32,
                          child: Row(
                            children: [
                              const Text("최신순"),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  context.pushNamed(RoutesName.MEMO,
                                      extra: widget.book);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.second,
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: AppColors.white,
                                        size: 12,
                                      ),
                                      width4,
                                      SmallText(
                                        text: "추가하기",
                                        color: Colors.white,
                                      ),
                                      width4
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                ]),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TabBarView(
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
              bookMemos.when(
                  data: (data) {
                    return ListView.separated(
                      itemCount: data.memos.length,
                      itemBuilder: (context, index) {
                        final memo = data.memos[index];
                        final entry = memo.entries.first;
                        return MemoItem(date: entry.key, content: entry.value);
                      },
                      separatorBuilder: (context, index) => const Line(),
                    );
                  },
                  error: (error, stack) => Center(
                        child: Text("에러가 발생했습니다: $error"),
                      ),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
