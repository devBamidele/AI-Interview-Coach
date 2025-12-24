import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

extension StringExtension on String? {
  String? validateEmail() {
    if (this != null && !EmailValidator.validate(this!)) {
      return 'Enter a valid email';
    }
    return null; // Return null if the email is valid
  }

  String? checkLoginPassword() {
    if (this == null || this!.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  String? validateName() {
    if (this == null || this!.isEmpty) {
      return 'Cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z\- ]+$').hasMatch(this!)) {
      return 'Name must contain only letters';
    }
    return null; // Return null if the name is valid
  }

  String? validateConfirmPassword(TextEditingController password) {
    if (this == null || this!.isEmpty) {
      return 'Confirm password is required';
    }
    if (this != password.text) {
      return 'Passwords do not match';
    }
    return null; // Return null if input is valid
  }
}

extension AppPlatform on Platform {
  static bool get isApple {
    return Platform.isIOS || Platform.isMacOS;
  }
}
