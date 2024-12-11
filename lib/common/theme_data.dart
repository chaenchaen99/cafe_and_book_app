import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData cafebookTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: "Pretendard",
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)), // 모서리를 둥글게 만들기
      borderSide: BorderSide(
        color: AppColors.contentPrimary, // 테두리 색상
        width: 1.0, // 테두리 두께
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(
        color: AppColors.contentPrimary, // 활성화 상태에서 테두리 색상
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(
        color: AppColors.contentPrimary, // 활성화 상태에서 테두리 색상
        width: 1.0,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'MoneyGraphy',
    ),
    helperStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'MoneyGraphy',
    ),
    labelStyle: TextStyle(
      color: AppColors.hintColor,
      fontFamily: 'MoneyGraphy',
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
