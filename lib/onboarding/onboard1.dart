import 'package:ecommerce_project/const/color.dart';
import 'package:ecommerce_project/utils/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({super.key});

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
     body: Center(
       child: Column(
         children: [
            Padding(
              padding:  EdgeInsets.only(left: 12.w,right: 12.w,top: 50.h),
              child: Image.asset('assets/images/Image1.png'),
            ),
           SizedBox(
             height: 5.h,
           ),
           Expanded(
             child: NormalText(
                 text: 'Various Collection of the \n         Latest Product',
                 size: 25.sp,
                 color: Colors.black),
           ),
           SizedBox(
             height: 5.h,
           ),
           Expanded(
             child: NormalText(
                 text: 'Urna Amed suspendises ullam corper ac alit dilam \n                         ficilist corper vabcip',
                 size: 12.sp,
                 color: AppColors().grayColor),
           ),

         ],
       ),
     ),
    );
  }
}
