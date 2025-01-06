import 'package:cafe_and_book/views/bookreview/widget/reading_state_badge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String title,
    required String link,
    required String image,
    required String author,
    required String discount,
    required String publisher,
    required String pubdate,
    required String isbn,
    required String description,
    @Default([]) List<Map<DateTime, String>> memos,
    @Default(ReadingState.initial) ReadingState readingState,
    required DateTime? addDateTime,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}
