import 'package:flutter/material.dart';
import 'package:foile/src/global/utils/conditions.dart';

class AuthController {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static final TextEditingController firstNameController =
      TextEditingController();
  static final TextEditingController lastNameController =
      TextEditingController();
  static String firstNameError = '';
  static String lastNameError = '';

  String? validateAuthForm({required String value, required String labelText}) {
    if (value.isEmpty) {
      return '$labelText cannot be empty!';
    } else if (value.trim().isEmpty) {
      return 'Please enter a valid $labelText!';
    } else if (ConditionsHelper().containsNonAlphabeticCharacters(value)) {
      return 'Only characters are allowed!';
    }
    return null;
  }
}
