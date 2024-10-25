class FormValidation {
  static String? validateText(String? value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Please fill the form correctly';
    }
    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age';
    }
    final int? age = int.tryParse(value);
    if (age == null || age <= 0) {
      return 'Please enter a valid age';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'^[\w-\.].+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
      return 'fill the field correctly';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter your passord correctly';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)) {
      return 'fill the field correctly';
    }

    return null;
  }
}
