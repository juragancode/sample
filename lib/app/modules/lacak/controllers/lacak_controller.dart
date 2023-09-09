import 'package:get/get.dart';

class LacakController extends GetxController {
  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  bool isYesterday(DateTime date) {
    final now = DateTime.now();
    final yesterday = now.subtract(Duration(days: 1));
    return date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day;
  }
}
