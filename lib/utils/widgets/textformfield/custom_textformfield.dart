import 'package:flutter/material.dart';
import 'package:hadirku_mobile/utils/utils.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final IconData? prefixIcon, suffixIcon;
  final bool isObscure, expands, readOnly;
  final int maxLines;
  final int? maxLength;
  final dynamic validate;
  final Widget? suffixIconWidget;
  final TextInputType? textInputType;
  final TextCapitalization textCapitalization;
  final AutovalidateMode? autovalidateMode;
  final Function()? onTap;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscure = false,
    this.expands = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.suffixIconWidget,
    this.textInputType,
    this.textCapitalization = TextCapitalization.none,
    this.autovalidateMode,
    this.validate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TextFormField(
        expands: expands,
        enabled: (readOnly == true) ? false : true,
        readOnly: readOnly,
        obscureText: isObscure,
        controller: controller,
        maxLines: maxLines,
        maxLength: (maxLength != null) ? maxLength : null,
        validator: (validate != null) ? validate : null,
        keyboardType: (textInputType != null) ? textInputType : null,
        textCapitalization: textCapitalization,
        autovalidateMode: (autovalidateMode != null) ? autovalidateMode : null,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: (prefixIcon != null)
              ? Icon(prefixIcon, color: dark ? Colors.white54 : Colors.black54)
              : null,
          suffixIcon: (suffixIconWidget != null)
              ? suffixIconWidget
              : (suffixIcon != null)
                  ? Icon(suffixIcon,
                      color: dark ? Colors.white54 : Colors.black54)
                  : null,
        ),
      ),
    );
  }
}