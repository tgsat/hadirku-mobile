import 'package:flutter/material.dart';

class GeneralTextFormFieldSearch extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final IconData? prefixIcon, suffixIcon;
  final bool isObscure, expands;
  const GeneralTextFormFieldSearch({
    super.key,
    required this.title,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscure = false,
    this.expands = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: expands,
      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        prefixIcon: (prefixIcon != null) ? Icon(prefixIcon) : null,
        suffixIcon: (suffixIcon != null) ? Icon(suffixIcon) : null,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    );
  }
}