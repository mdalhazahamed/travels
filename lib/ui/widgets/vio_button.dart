import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wellpaper/const/app-colors.dart';

import 'package:wellpaper/ui/style/style.dart';

class VioletButton extends StatelessWidget {
  String title;
  final Function onAction;

  VioletButton(this.title, this.onAction);

  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.violetColor,
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          child: _value == false
              ? Center(
                  child: Text(title, style: myTexstyle17),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Please Wait",
                      style: myTexstyle17,
                    ),
                    SizedBox(width: 10.w),
                    Transform.scale(
                      scale: 0.4,
                      child: CircularProgressIndicator(
                          backgroundColor: Colors.white),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
