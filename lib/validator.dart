class Validator {
  static String? validateText(String? fieldname, String? value) {
    if (value == null || value.isEmpty) return "$fieldname is empty";
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required.';

    final email = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!email.hasMatch(value)) {
      return 'Invalid email Address';
    }
    return null;
  }

  static String? validatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters long ";
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    return null;
  }

  static String? phonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    if (value.length < 10 || value.length > 10) {
      return "Password must be at least 10 characters long ";
    }
    return null;
  }

  static bool checkbox(bool check) {
    if (!check) {
      return false;
    }
    return true;
  }
}
