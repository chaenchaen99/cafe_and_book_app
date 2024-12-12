import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData cafebookTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: "Pretendard",
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.background,
    iconTheme: IconThemeData(color: AppColors.contentPrimary),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0), // 모서리를 둥글게 만들기
      borderSide: const BorderSide(
        color: AppColors.contentPrimary, // 테두리 색상
        width: 1.0, // 테두리 두께
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      borderSide: BorderSide(
        color: AppColors.contentPrimary, // 활성화 상태에서 테두리 색상
        width: 1.0,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      borderSide: BorderSide(
        color: AppColors.contentPrimary, // 활성화 상태에서 테두리 색상
        width: 1.0,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
    hintStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    helperStyle: const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    labelStyle: const TextStyle(
      color: AppColors.hintColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //하단 네비게이션 바 테마
    backgroundColor: AppColors.second,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    selectedItemColor: AppColors.white,
    unselectedItemColor: Colors.white70,
  ),
);
