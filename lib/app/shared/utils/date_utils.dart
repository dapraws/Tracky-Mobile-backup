import 'package:intl/intl.dart';

class DateUtil {
  static String formatDate(DateTime date) {
    return DateFormat('d-M-yyyy').format(date);
    // return DateFormat('d-MMM-yyyy').format(date); //kalo bulannya mau huruf
  }
}
