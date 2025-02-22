import 'package:flutter/material.dart';
import 'package:flutter_test_application/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.transparent)),
        filled: true,
        fillColor: AppColors.white.withOpacity(0.5),
      ),
    );
  }
}
