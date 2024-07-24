class Validatorlogin {
  static String? Email(String? value) {
    if (value == null || value.isEmpty) return 'Email is required.';
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Password is required.';
    return null;
  }

  bool Ischecked(value) {
    if (value == true) {
      return true;
    } else {
      return false;
    }
  }
}
