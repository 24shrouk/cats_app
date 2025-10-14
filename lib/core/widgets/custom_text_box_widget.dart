import 'package:cats_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.obscurText = false,
    this.controller,
    this.validator,
    this.hintStyle,
    this.keyboardType,
    this.border,
    this.fillColor,
  });

  final double? border;
  final String? hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? fillColor;
  bool obscurText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextStyle? hintStyle;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: 1,
      obscureText: obscurText,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,

      cursorColor: AppColors.greyF9FColor,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: hint,
        contentPadding: EdgeInsets.all(12),

        prefixIconConstraints: BoxConstraints(maxHeight: 45, maxWidth: 45),
        suffixIconConstraints: BoxConstraints(maxHeight: 45, maxWidth: 45),
        hintStyle: hintStyle ?? const TextStyle(color: AppColors.greyF8FColor),
        border: buildBorder(),
        enabledBorder: buildBorder(enabledBorderColor),
        focusedBorder: buildBorder(focusedBorderColor),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: suffixIcon,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: prefixIcon,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: border == null
          ? BorderRadius.circular(10)
          : BorderRadius.circular(border!),
      borderSide: BorderSide(color: color ?? AppColors.grey6F6Color),
    );
  }
}
