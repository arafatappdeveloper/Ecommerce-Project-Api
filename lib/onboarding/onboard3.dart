import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/color.dart';
import '../utils/normal_text.dart';

class Onboard3 extends StatefulWidget {
  const Onboard3({super.key});

  @override
  State<Onboard3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures the column only takes necessary space
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 50.h),
              child: Image.asset('assets/images/Image 3.png'),
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: NormalText(
                text: 'Find The Most Suitable \n         Outfit For You',
                size: 25.sp,
                color: Colors.black,
              
              ),
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: NormalText(
                text: 'Urna Amed suspendises ullam corper ac alit dilam \n                         ficilist corper vabcip',
                size: 12.sp,
                color: AppColors().grayColor,
              
              ),
            ),
          ],
        ),
      ),

    );
  }
}
