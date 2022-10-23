import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("See All"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 20,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFfC4C4C4),
                borderRadius: BorderRadius.all(
                  Radius.circular(7.r),
                ),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.r),
                    topRight: Radius.circular(7.r),
                  ),
                  child: Image.asset(
                    "assets/images/debtakhum.jpeg",
                    height: 115.h,
                    fit: BoxFit.cover,
                  )),
            );
          },
        ),
      ),
    );
  }
}
