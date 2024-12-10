import 'package:cafe_and_book/common/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SafeArea(child: MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      theme: cafebookTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
