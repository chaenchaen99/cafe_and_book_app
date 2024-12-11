import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static const String cacheKey = "bestseller_list_cache_key";

  static Future<void> saveBestSellerListToCache(
      Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = jsonEncode(data);
    await prefs.setString(cacheKey, jsonData);
  }

  static Future<Map<String, dynamic>?> loadBestSellerListFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString(cacheKey);
    if (jsonData == null) return null; // 캐시된 데이터가 없을 경우
    return jsonDecode(jsonData); // JSON 문자열을 Map으로 변환
  }

  static Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(cacheKey);
  }

  static Future<void> saveLastFetched(DateTime lastFetched) async {
    final prefs = await SharedPreferences.getInstance();
    // `lastFetched`를 문자열로 변환하여 저장
    await prefs.setString('lastFetched', lastFetched.toIso8601String());
  }

  static Future<DateTime?> loadLastFetched() async {
    final prefs = await SharedPreferences.getInstance();
    // 저장된 문자열을 DateTime으로 변환하여 반환
    final lastFetchedString = prefs.getString('lastFetched');
    if (lastFetchedString != null) {
      return DateTime.tryParse(lastFetchedString);
    }
    return null;
  }
}
