import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/height_and_width.dart';
import '../../../common/widgets/line.dart';
import '../../../view_model/home/home_view_model.dart';
import 'main_title_text.dart';

class PopularBookList extends ConsumerStatefulWidget {
  const PopularBookList({super.key});

  @override
  ConsumerState<PopularBookList> createState() => _PopularBookListState();
}

class _PopularBookListState extends ConsumerState<PopularBookList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeViewModelProvider.notifier).fetchBestSellerList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bestSellersState = ref.watch(homeViewModelProvider);

    return bestSellersState.getbookListState.when(
      data: (bookMap) {
        return Column(
            children: bookMap.entries.map((entry) {
          final category = entry.key.type; // 카테고리 이름
          final books = entry.value; // 해당 카테고리의 책 리스트

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/ranking.png',
                      width: 25,
                      height: 25,
                    ),
                    MainTitleText(title: " $category 도서 순위"),
                  ],
                ),
              ),
              height10,
              SizedBox(
                height: 260,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => context.pushNamed(RoutesName.DETAIL,
                          extra: books[index]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(16.0)), // 둥근 모서리 적용
                              border: Border.all(
                                // 테두리 적용
                                color: Colors.grey.shade300, // 테두리 색상
                                width: 1, // 테두리 두께
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              child: Image.network(
                                books[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          height10,
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: 140,
                              child: Text(
                                books[index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Line(),
            ],
          );
        }).toList());
      },
      error: (error, stack) => Center(
        child: Text("에러가 발생했습니다: $error"),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
