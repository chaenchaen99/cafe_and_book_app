import 'package:cafe_and_book/routes/routes_name.dart';
import 'package:cafe_and_book/views/bookcafe/bookcafe_screen.dart';
import 'package:cafe_and_book/views/library/library_screen.dart';
import 'package:cafe_and_book/views/main_screen.dart';
import 'package:cafe_and_book/views/search/search_screen.dart';
import 'package:cafe_and_book/views/setting/setting_screen.dart';
import 'package:cafe_and_book/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../views/home/home_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: "/splash",
      routes: [
        GoRoute(
          path: "/splash",
          builder: (context, state) => const SplashScreen(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              MainScreen(navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/home",
                  name: RoutesName.HOME,
                  builder: (context, state) => const HomeScreen(),
                  routes: [
                    GoRoute(
                      path: "search",
                      name: RoutesName.SEARCH,
                      builder: (context, state) => const SearchScreen(),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/library",
                  name: RoutesName.LIBRARY,
                  builder: (context, state) => const LibraryScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/bookcafe",
                  name: RoutesName.BOOKCAFE,
                  builder: (context, state) => const BookcafeScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/setting",
                  name: RoutesName.SETTING,
                  builder: (context, state) => const SettingScreen(),
                ),
              ],
            ),
          ],
        ),
      ]);
});
