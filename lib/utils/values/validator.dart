class Validator {
  // Validation Empty Text
  static String? validateEmptyText(String? field, String? value) {
    if (value == null || value.isEmpty) {
      return '$field tidak boleh kosong.';
    }
    return null;
  }

  // Validation Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Format alamat email salah';
    }
    return null;
  }

  // Validation Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong.';
    }

    if (value.length < 8) {
      return 'Password harus lebih dari 8 karakter.';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password harus mengandung setidaknya satu huruf besar.';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password harus berisi setidaknya satu angka.';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password setidaknya harus mengandung karakter spesial.';
    }
    return null;
  }

  // Validation Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor HP tidak boleh kosong.';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if (phoneRegExp.hasMatch(value)) {
      return 'Nomor HP tidak valid.';
    }
    return null;
  }
}