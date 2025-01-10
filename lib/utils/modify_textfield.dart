import 'package:ecommerce_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


InputDecoration modifyTextField(String hintText, Widget prefixIcon) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors().grayColor), // Border color when not focused
      borderRadius: BorderRadius.circular(15.r),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors().grayColor, width: 1.0.w), // Border color when focused
      borderRadius: BorderRadius.circular(15.r),
    ),
    hintText: hintText,

    //hoverColor: AppColors().primariColor,
    prefixIcon: prefixIcon,
  );
}
