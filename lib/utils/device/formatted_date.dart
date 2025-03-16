import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp.',
    ).format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit Indonesia phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLenght = 2;
      if (i == 0 && countryCode == '+62') {
        groupLenght = 3;
      }

      int end = i + groupLenght;
      formattedNumber.write(digitOnly.substring(1, end));

      if (end < digitOnly.length) {
        formattedNumber.write('  ');
      }

      i = end;
    }
  }
}