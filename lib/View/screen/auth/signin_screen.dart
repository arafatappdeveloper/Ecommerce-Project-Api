import 'package:ecommerce_project/const/color.dart';
import 'package:ecommerce_project/utils/modify_textfield.dart';
import 'package:ecommerce_project/utils/normal_text.dart';
import 'package:ecommerce_project/utils/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 15.w,right: 15.w,top: 45.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(text: 'LogIn Account', size: 27.sp, color: Colors.black),
              SizedBox(
                height: 7.h,
              ),
              NormalText(text: 'Please login with registered account', size: 14.sp, color:AppColors().grayColor),
              SizedBox(
                height: 30.h,
              ),

              NormalText(text: 'Email or Phone Number', size: 17.sp, color:AppColors().grayColor),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: modifyTextField('enter your email and password', Icon(Icons.email_rounded)),
              ),
              SizedBox(
                height: 14.h,
              ),
              NormalText(text: 'Password', size: 17.sp, color:AppColors().grayColor),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: modifyTextField('create your password', Icon(Icons.local_mall_sharp)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    
                  },
                      child: Text('Forgotted Password'))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              RoundButton(
                text: 'Sign In',
                height: 45.h,
                weight: 330.w,
                onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(child: NormalText(text: 'Or using other method', size: 15.sp, color: AppColors().grayColor)),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors().grayColor, width: 1.w),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/search.png',width: 25.w,),
                    SizedBox(width: 5.w,),
                    Text('Sign Up With Google')
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors().grayColor, width: 1.w),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue,),
                    SizedBox(width: 2.w,),
                    Text('Sign Up With Facebook')
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
