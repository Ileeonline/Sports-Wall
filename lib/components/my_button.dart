// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyButton extends StatefulWidget {
  final String btnTxt;
  void Function()? onTap;
  BoxBorder? border;
  Color? color;
  MyButton({
    super.key,
    required this.onTap,
    required this.border,
    required this.btnTxt,
    required this.color,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8.sp),
          border: widget.border,
        ),
        child: Text(
          widget.btnTxt,
          style: TextStyle(
            color: widget.color == Theme.of(context).colorScheme.secondary
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.secondary,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
