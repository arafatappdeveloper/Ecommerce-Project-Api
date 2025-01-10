import 'package:ecommerce_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  double height,weight;
  RoundButton({super.key,
    required this.text,
    required this.height,
    required this.weight,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.sp),
          color: AppColors().primariColor
        ),
        child: Center(child: Text(text,style: TextStyle(color:AppColors().whiteColor),)),
        height: height,
        width: weight,
      ),
    );
  }
}
