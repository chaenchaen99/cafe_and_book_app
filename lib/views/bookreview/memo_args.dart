import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_args.freezed.dart';
part 'memo_args.g.dart';

@freezed
class MemoArgs with _$MemoArgs {
  const factory MemoArgs(
    String bookTitle,
    DateTime timeStamp,
    String content,
  ) = _MemoArgs;

  factory MemoArgs.fromJson(Map<String, dynamic> json) =>
      _$MemoArgsFromJson(json);
}
