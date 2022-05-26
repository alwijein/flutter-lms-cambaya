part of 'utils.dart';

class FormatDate {
  static fromatToday(DateTime dateTime) {
    return DateFormat('EEEE').format(dateTime);
  }

  static formatDateBasic(DateTime dateTime) {
    // return DateFormat.EEEE('in').format(dateTime);
    return DateFormat('EEEE, dd, MMMM').format(dateTime);
  }

  static formatDateWithTime(DateTime dateTime) {
    return DateFormat('yyyy-MMMM-dd - kk:mm').format(dateTime);
  }

  static formatDateMonth(DateTime dateTime) {
    return DateFormat('MMMM').format(dateTime);
  }
}
