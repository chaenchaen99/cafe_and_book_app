import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void handlePop(BuildContext context) {
  if (context.canPop()) {
    context.pop();
  } else {
    debugPrint('더 이상 Pop할 수 없습니다.');
  }
}
