import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/color.dart';
import '../utils/normal_text.dart';

class Onboard2 extends StatefulWidget {
  const Onboard2({super.key});

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 12.w,right: 12.w,top: 50.h),
              child: Image.asset('assets/images/Image 2.png'),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: NormalText(
                  text: 'Complete Collection of \n         Colors and Sizes',
                  size: 25.sp,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: NormalText(
                  text: 'Urna Amed suspendises ullam corper ac alit dilam \n                        ficilist corper vabcip',
                  size: 12.sp,
                  color: AppColors().grayColor),
            ),

          ],
        ),
      ),
    );
  }
}
