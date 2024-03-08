import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class Validator {
  static String? validateName(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return S.of(context).field_is_require;
    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return S.of(context).please_enter_correct_name;
    } else {
      return null;
    }
  }

  static String? validatePhone(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return S.of(context).field_is_require;
    } else if (!RegExp(r'^01[0-2,5]{1}[0-9]{8}$').hasMatch(value)) {
      return S.of(context).please_enter_correct_number;
    }
    return null;
  }

  static String? validateEmail(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return S.of(context).field_is_require;
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return S.of(context).please_enter_correct_email;
    } else {
      return null;
    }
  }

  // static String? validatePassword(String? value) {
  //   if (value!.isEmpty) {
  //     return "Field is required";
  //   } else if (value.length < 6) {
  //     return "Password must be at least 6 characters";
  //   } else {
  //     return null;
  //   }
  // }

  static bool passwordValidate(String pass) {
    String password = pass.trim();
    if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? validatePassword(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return S.of(context).field_is_require;
    }
    //else {
    // bool result = passwordValidate(value);
    // if (result) {
    //   return null;
    // } else {
    //   return "Your password should contain capital, small, special characters";
    // }

    //}

    else if (value.length < 8) {
      return S.of(context).password_must_be_at_least_8_character;
    } else {
      return null;
    }
  }

  static String? validateAnotherField(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return S.of(context).field_is_require;
    } else {
      return null;
    }
  }
}
