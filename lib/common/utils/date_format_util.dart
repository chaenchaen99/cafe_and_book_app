import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  String formatDate() {
    final DateFormat formatter = DateFormat("yyyy.MM.dd a h시 m분", 'ko_KR');
    return formatter.format(this);
  }
}
