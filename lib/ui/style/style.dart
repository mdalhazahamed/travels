import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle myTexstyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 20.sp,
);
TextStyle myTexstyle17 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 17.sp, color: Colors.white);

InputDecoration textFieldDecorcation(String hin, Icon icon) => InputDecoration(
      hintText: hin,
      hintStyle: TextStyle(
        fontSize: 15.sp,
      ),
      prefixIcon: icon,
      prefixStyle: TextStyle(fontSize: 15.sp),
    );

    
