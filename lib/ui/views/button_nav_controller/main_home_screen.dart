import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'button_nav_controller.dart';
import 'drawer_screen.dart';

class MainHomeScreen extends StatelessWidget {
  Future _exitDiolog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are u sure to close this app?"),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () => Get.back(),
                child: Text("No"),
              ),
              SizedBox(width: 20.w),
              ElevatedButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text("Yes"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _exitDiolog(context);
        return Future.value(false);
      },
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            ButtonNavController(),
          ],
        ),
      ),
    );
  }
}
