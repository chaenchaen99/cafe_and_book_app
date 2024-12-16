import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookcafe_model.freezed.dart';
part 'bookcafe_model.g.dart';

@freezed
class BookCafeModel with _$BookCafeModel {
  const factory BookCafeModel({
    @Default("") String bookCafeName,
    @Default([]) List<String> thumbnails,
    @Default("") String address,
    @Default("") String roadAddress,
    @Default("") String mapx,
    @Default("") String mapy,
  }) = _BookCafeModel;

  factory BookCafeModel.fromJson(Map<String, dynamic> json) =>
      _$BookCafeModelFromJson(json);
}
