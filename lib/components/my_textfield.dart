// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  final String labelTxt;
  bool obscureText;
  TextInputType? keyboardType;
  Widget? prefixIcon;
  MyTextField({
    super.key,
    required this.labelTxt,
    required this.obscureText,
    required this.keyboardType,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).colorScheme.tertiary,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).colorScheme.tertiary,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        labelText: labelTxt,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.sp),
          ),
        ),
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.tertiary, // Text color
        fontSize: 12.sp, // Font size
      ),
      keyboardType: keyboardType,
    );
  }
}
