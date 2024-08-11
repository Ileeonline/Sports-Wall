// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  final String labelTxt;
  bool obscureText;
  TextInputType? keyboardType;
  MyTextField({
    super.key,
    required this.labelTxt,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).colorScheme.tertiary,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
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
