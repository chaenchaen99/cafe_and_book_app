import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/book_response.dart';

class CacheManager {
  static const String bestSellerKey = "bestseller_list_cache_key";
  static const String bookShelfKey = "bookshelf_cache_key";
  static const String lastFetchedKey = "last_fetched_key";

  static Future<void> saveBestSellerListToCache(
      Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = jsonEncode(data);
    await prefs.setString(bestSellerKey, jsonData);
  }

  static Future<Map<String, dynamic>?> loadBestSellerListFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString(bestSellerKey);
    if (jsonData == null) return null; // 캐시된 데이터가 없을 경우
    return jsonDecode(jsonData); // JSON 문자열을 Map으로 변환
  }

  static Future<void> clearBestSellerCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(bestSellerKey);
  }

  static Future<void> saveLastFetched(DateTime lastFetched) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(lastFetchedKey, lastFetched.toIso8601String());
  }

  static Future<DateTime?> loadLastFetched() async {
    final prefs = await SharedPreferences.getInstance();
    final lastFetchedString = prefs.getString(lastFetchedKey);
    if (lastFetchedString != null) {
      return DateTime.tryParse(lastFetchedString);
    }
    return null;
  }

  static Future<void> saveBookToBookShelf(Book book) async {
    final prefs = await SharedPreferences.getInstance();

    final jsonData = jsonEncode([book]);
    await prefs.setString(bookShelfKey, jsonData);
  }

  static Future<List<Book>?> loadBookShelfFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString(bookShelfKey);
    if (jsonData == null) return null;

    // JSON 데이터를 List<Map<String, dynamic>>로 디코딩
    final List<dynamic> decodedMap = jsonDecode(jsonData);

    // List<Book>으로 변환
    return decodedMap.map((bookJson) => Book.fromJson(bookJson)).toList();
  }

  static Future<void> deleteBookFromShelf(String bookTitle) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    // 책을 찾아서 삭제
    bookShelf.removeWhere((book) => book.title == bookTitle);

    // 삭제 후 수정된 서재 저장
    final jsonData = jsonEncode(bookShelf);
    await prefs.setString(bookShelfKey, jsonData);
  }

  static Future<void> clearBookShelfCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(bookShelfKey);
  }
}
