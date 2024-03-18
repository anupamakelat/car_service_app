import 'package:flutter_car_service_app/common/signup.dart';

class validations {
  static String? nameValidator(String? value) {
    final trimmedvalue = value?.trim();

    if (trimmedvalue == null || trimmedvalue.isEmpty) {
      return 'Enter Your Name';
    }
    final RegExp nameRegExp = RegExp(r'^[A-Z][a-zA-Z ]*$');

    if (!nameRegExp.hasMatch(trimmedvalue)) {
      return "First letter should be capital";
    }
    return null;
  }

  static String? validatePhone(String? value) {
    final trimmedvalue = value?.trim();

    if (trimmedvalue == null || trimmedvalue.isEmpty) {
      return 'Enter your Phone Number';
    }

    final RegExp phoneRegExp =
        RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');

    if (!phoneRegExp.hasMatch(trimmedvalue)) {
      return 'Enter your Number';
    }
    return null;
  }

  //email
  static String? validateEmail(String? value) {
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'enter your email id';
    }

    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
    );

    if (!emailRegExp.hasMatch(trimmedValue)) {
      return 'enter valid email';
    }
    return null;
  }

  //createpassword
  static String? validateCreatepassword(String? value) {
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'create a password';
    }
    return null;
  }

  //conformepassword
  static String? validateConformpassword(String? value) {
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'Re Enter your password';
    }

    if (trimmedValue != passController.text) {
      return 'Password must watch';
    }

    return null;
  }
}
