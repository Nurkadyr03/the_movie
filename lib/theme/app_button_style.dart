import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
      textStyle: const MaterialStatePropertyAll(
          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      foregroundColor: MaterialStateProperty.all(Colors.black));
}
