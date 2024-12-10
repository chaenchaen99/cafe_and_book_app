import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final options = BaseOptions(
    responseType: ResponseType.json,
    headers: {
      "Content-Type": "application/json",
      "X-Naver-Client-Id": "9oeImTG7ehcGIZ7ZKVhS",
      "X-Naver-Client-Secret": "M7sBx6IRSb",
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
  return Dio(options);
}
