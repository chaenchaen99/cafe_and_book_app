import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/view_model/bookreview/bookreview_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/text_widgets.dart';

enum ReadingState {
  initial("읽기 전", AppColors.initial),
  reading("읽는 중", AppColors.reading),
  done("완료", AppColors.done);

  final String label;
  final Color color;
  const ReadingState(this.label, this.color);
}

const double expandedReadingBadgeWidth = 180;
const double shrinkedReadingBadgeWidth = 60;
const double readingBadgeHeight = 30;

class ReadingStateBadge extends ConsumerStatefulWidget {
  final BookModel book;
  const ReadingStateBadge(
    this.book, {
    super.key,
  });

  @override
  ConsumerState<ReadingStateBadge> createState() => _ReadingStateBadgeState();
}

class _ReadingStateBadgeState extends ConsumerState<ReadingStateBadge> {
  late bool _isExpanded;
  late ReadingState _currentState;

  void toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    _isExpanded = false;
    _currentState = widget.book.readingState;
  }

  void _changeState(ReadingState newState) {
    setState(() {
      _currentState = newState;
      ref
          .read(bookReviewViewModelProvider.notifier)
          .modifyMyBookReadingState(widget.book.title, _currentState);
      _isExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: toggleExpanded,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _isExpanded
                ? expandedReadingBadgeWidth
                : shrinkedReadingBadgeWidth,
            height: readingBadgeHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _currentState.color.withOpacity(0.9),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
            child: _isExpanded
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ReadingState.values.map((state) {
                      return GestureDetector(
                        onTap: () => _changeState(state),
                        child: Container(
                          height: 28,
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: state == _currentState
                                ? AppColors.white
                                : Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SmallText(
                              text: state.label,
                              color: state == _currentState
                                  ? _currentState.color
                                  : AppColors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  )
                : Center(
                    child: SmallText(
                      text: _currentState.label,
                      color: AppColors.white,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
