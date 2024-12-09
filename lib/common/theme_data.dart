import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData cafebookTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: "Pretendard",
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //하단 네비게이션 바 테마
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed, //고정타입
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
  ),
);
