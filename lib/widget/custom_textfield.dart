import 'package:flutter/material.dart';

import '../styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hint,
    this.obscure = false,
    this.hasSuffix = false,
    this.onPressed,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final bool obscure;
  final bool hasSuffix;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyles.body,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscure,
      decoration: InputDecoration(
          suffixIcon: hasSuffix
              ? IconButton(
                  onPressed: onPressed,
                  icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.0,
                color: AppColors.darkGrey,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black26)),
    );
  }
}
