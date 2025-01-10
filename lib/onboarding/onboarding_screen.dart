import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../View/screen/auth/sign_up_screen.dart';
import '../const/color.dart';

import '../utils/normal_text.dart';
import '../utils/round_button.dart';
import 'onboard1.dart';
import 'onboard2.dart';
import 'onboard3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.8,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Onboard1(),
                  Onboard2(),
                  Onboard3(),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05, // Occupies 5% of screen height
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                  spacing: 8.w,
                  activeDotColor: AppColors().primariColor,
                  dotColor: Colors.grey.shade300,
                ),
                onDotClicked: (index) {
                  _controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceIn,
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1, // Adjust button size for web
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: RoundButton(
                  text: 'Create Account',
                  height: 40.h,
                  weight: 270.w,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: NormalText(
                text: 'Already Have an Account',
                size: 15.sp,
                color: AppColors().primariColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
