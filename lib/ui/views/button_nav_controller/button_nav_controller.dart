import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wellpaper/const/app_strings.dart';
import 'package:wellpaper/ui/views/button_nav_controller/pages/nav_add.dart';
import 'package:wellpaper/ui/views/button_nav_controller/pages/nav_favourite.dart';
import 'package:wellpaper/ui/views/button_nav_controller/pages/nav_home.dart';

class ButtonNavController extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  RxBool _drawer = false.obs;

  final pages = [
    HomePage(),
    NavAddPage(),
    FavouritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: 400),
        top: _drawer.value == false ? 0 : 100.h,
        bottom: _drawer.value == false ? 0 : 100.h,
        left: _drawer.value == false ? 0 : 200.w,
        right: _drawer.value == false ? 0 : -100.w,
        child: Container(
          decoration: BoxDecoration(),
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                AppStings.appName,
                style: TextStyle(color: Colors.black),
              ),
              leading: _drawer.value == false
                  ? IconButton(
                      onPressed: () {
                        _drawer.value = true;
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        _drawer.value = false;
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (value) => _currentIndex.value = value,
              currentIndex: _currentIndex.value,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_outlined), label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Favourite"),
              ],
            ),
            body: pages[_currentIndex.value],
          ),
        ),
      ),
    );
  }
}
