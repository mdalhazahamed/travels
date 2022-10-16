import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wellpaper/const/app-colors.dart';
import 'package:wellpaper/models/onboaring_model.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/style/style.dart';

class OnboardingScreen extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                  flex: 2,
                  child: Lottie.asset(jsonData[_currentIndex.toInt()].image),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text('${jsonData[_currentIndex.toInt()].title}',
                              style: AppStyles().myTexstyle),
                        ),
                        Obx(
                          () => Text(
                              '${jsonData[_currentIndex.toInt()].discription}'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => DotsIndicator(
                                dotsCount: jsonData.length,
                                position: _currentIndex.toDouble(),
                                decorator: DotsDecorator(
                                    activeColor: Colors.black,
                                    color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (_currentIndex == 2) {
                                  Get.toNamed(signUp);
                                } else {
                                  _currentIndex + 1;
                                }
                              },
                              child: Container(
                                height: 37.h,
                                width: 37.w,
                                decoration: BoxDecoration(
                                  color: AppColors.scaffoldColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 10,
                                      spreadRadius: 1.0,
                                      offset: Offset(4.0, 4.0),
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 5,
                                      spreadRadius: 1.0,
                                      offset: Offset(-4.0, -4.0),
                                    ),
                                  ],
                                ),
                                child:
                                    Icon(FontAwesomeIcons.forward, size: 18.sp),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
