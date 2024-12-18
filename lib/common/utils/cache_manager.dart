import 'dart:convert';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static const String bestSellerKey = "bestseller_list_cache_key";
  static const String bookShelfKey = "bookshelf_cache_key";
  static const String lastFetchedKey = "last_fetched_key";

  //---베스트 셀러 캐시 관련---
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

  //---책 저장 관련---
  static Future<void> saveBookToBookShelf(BookModel book) async {
    final prefs = await SharedPreferences.getInstance();

    final existingData = prefs.getString(bookShelfKey);
    List<BookModel> books = [];

    if (existingData != null) {
      final decodedData = jsonDecode(existingData) as List;
      books = decodedData.map((e) => BookModel.fromJson(e)).toList();
    }

    books.add(book);

    final jsonData = jsonEncode(books.map((e) => e.toJson()).toList());
    await prefs.setString(bookShelfKey, jsonData);
  }

  static Future<List<BookModel>?> loadBookShelfFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString(bookShelfKey);
    if (jsonData == null) return null;

    final List<dynamic> decodedMap = jsonDecode(jsonData);

    return decodedMap.map((bookJson) => BookModel.fromJson(bookJson)).toList();
  }

  static Future<List<BookModel>?> deleteBookFromShelf(String bookTitle) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    bookShelf.removeWhere((book) => book.title == bookTitle);

    final jsonData = jsonEncode(bookShelf);
    await prefs.setString(bookShelfKey, jsonData);

    return bookShelf;
  }

  static Future<void> clearBookShelfCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(bookShelfKey);
  }

  //---책 메모 관련---
  static Future<BookModel?> getBookByTitle(String bookTitle) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    // bookTitle과 일치하는 책을 찾음
    final books = bookShelf.where((book) => book.title == bookTitle).toList();

    if (books.isNotEmpty) {
      return books.first; // 첫 번째 일치하는 책 반환
    } else {
      return null; // 일치하는 책이 없으면 null 반환
    }
  }

  static Future<BookModel?> addMemoToBook(
      {required String bookTitle, required String memo}) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    final bookIndex = bookShelf.indexWhere((book) => book.title == bookTitle);
    if (bookIndex != -1) {
      final book = bookShelf[bookIndex];
      final newMemo = {DateTime.now(): memo};

      final updatedBook =
          book.copyWith(memos: List.from(book.memos)..add(newMemo));

      bookShelf[bookIndex] = updatedBook;

      final jsonData = jsonEncode(bookShelf.map((e) => e.toJson()).toList());
      await prefs.setString(bookShelfKey, jsonData);

      return updatedBook;
    } else {
      return null;
    }
  }

  static Future<BookModel?> modifyMemoInBook(
    String bookTitle,
    DateTime timestamp,
    String newContent,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    final bookIndex = bookShelf.indexWhere((book) => book.title == bookTitle);
    if (bookIndex != -1) {
      final book = bookShelf[bookIndex];
// 타임스탬프에 해당하는 메모를 삭제하고 새로운 메모 추가
      final updatedMemos = book.memos.where((memo) {
        return !memo.containsKey(timestamp); // 해당 타임스탬프와 일치하는 메모 삭제
      }).toList();

      // 새로운 타임스탬프와 내용으로 메모 추가
      final newTimeStamp = DateTime.now();
      updatedMemos.add({newTimeStamp: newContent});

      // 책 업데이트
      final updatedBook = book.copyWith(memos: updatedMemos);

      bookShelf[bookIndex] = updatedBook;

      final jsonData = jsonEncode(bookShelf.map((e) => e.toJson()).toList());
      await prefs.setString(bookShelfKey, jsonData);

      return updatedBook;
    } else {
      return null;
    }
  }

  static Future<BookModel?> deleteMemoFromBook(
    String bookTitle,
    DateTime timestamp,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final bookShelf = await loadBookShelfFromCache() ?? [];

    final bookIndex = bookShelf.indexWhere((book) => book.title == bookTitle);
    if (bookIndex != -1) {
      final book = bookShelf[bookIndex];

      final updatedMemos = book.memos.where((memo) {
        return !memo.containsKey(timestamp);
      }).toList();

      final updatedBook = book.copyWith(memos: updatedMemos);

      bookShelf[bookIndex] = updatedBook;
      final jsonData = jsonEncode(bookShelf.map((e) => e.toJson()).toList());
      await prefs.setString(bookShelfKey, jsonData);
      return updatedBook;
    } else {
      return null;
    }
  }
}
