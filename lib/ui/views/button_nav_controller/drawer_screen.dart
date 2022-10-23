import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wellpaper/const/app_strings.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/views/button_nav_controller/button_nav_controller.dart';
import 'package:wellpaper/ui/widgets/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 50.h, bottom: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStings.appName,
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w300),
            ),
            Text(
              "Tavels Agency",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 20.h),
            drawerItem(
              "Support",
              () => Get.toNamed(supportScreen),
            ),
            drawerItem(
              "Privacy",
              () => Get.toNamed(privacyScreen),
            ),
            drawerItem(
              "FAQ",
              () => Get.toNamed(faqScreen),
            ),
            drawerItem(
              "Rate US",
              () {},
            ),
            drawerItem(
              "How to Use",
              () => Get.toNamed(howToUseScreen),
            ),
            Expanded(
              child: SizedBox(),
            ),
            InkWell(
              onTap: () => Get.toNamed(settingsScreen),
              child: Row(
                children: [
                  Icon(Icons.settings_outlined),
                  SizedBox(width: 8.w),
                  Text(
                    "Settings",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
