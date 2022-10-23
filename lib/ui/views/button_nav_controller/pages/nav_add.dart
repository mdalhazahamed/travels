import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wellpaper/ui/route/route.dart';

import 'package:wellpaper/ui/widgets/custom_field.dart';
import 'package:wellpaper/ui/widgets/vio_button.dart';

class NavAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                "If you have any problems, please contact us. We are at your service all the time.",
                style: TextStyle(
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              customTextField("Owner Name"),
              customTextField("Description"),
              customTextField("Cost"),
              customTextField("Facilities", maxline: 4),
              customTextField("Destination",),
              VioletButton("Next", ()=>Get.toNamed(navAddLastStep),),
            ],
          ),
        ),
      ),
    );
  }
}
