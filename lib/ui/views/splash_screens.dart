import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wellpaper/const/app_strings.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:lottie/lottie.dart';
import 'package:wellpaper/ui/style/style.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(onboarding));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/photo/logo1.png", width: 200.w),
              SizedBox(height: 10.h),
              Text(
                AppStings.appName,
                style: AppStyles().myTexstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
