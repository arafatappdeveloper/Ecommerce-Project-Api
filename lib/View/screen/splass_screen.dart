import 'dart:async';

import 'package:ecommerce_project/const/color.dart';
import 'package:ecommerce_project/onboarding/onboarding_screen.dart';
import 'package:ecommerce_project/utils/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),  // Replace `NextScreen` with your target screen
            (route) => false,  // Removes all previous routes
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().primariColor,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: NormalText(text: 'App', size: 25.sp, color: AppColors().whiteColor)),
          Center(child: NormalText(text: 'Any shopping just from home', size: 15.sp, color: AppColors().whiteColor)),
        ],
      ),


    );
  }
}
