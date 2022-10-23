import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget drawerItem(String ItemName, onclick) {
  return InkWell(
    onTap: onclick,
    child: Text(
      ItemName,
      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
    ),
  );
}
