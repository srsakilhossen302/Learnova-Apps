import 'package:flutter/material.dart';

class LoginPageController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passController.dispose();
  }
}
