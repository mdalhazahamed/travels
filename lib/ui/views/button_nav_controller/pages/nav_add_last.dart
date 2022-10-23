
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wellpaper/ui/widgets/vio_button.dart';

import '../../../widgets/custom_field.dart';

class NavAddLastStep extends StatefulWidget {
  @override
  State<NavAddLastStep> createState() => _NavAddLastStepState();
}

class _NavAddLastStepState extends State<NavAddLastStep> {

  final ImagePicker _picker = ImagePicker();
  List<XFile>? images;

  Future multipleImagePicker() async {
    images = await _picker.pickMultiImage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextField("Phone Number"),
                customTextField("Destination Date & Time"),
                Text(
                  "Choose Images",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9EBED),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.r),
                    ),
                  ),
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: () => multipleImagePicker(),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images?.length ?? 0,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 100,
                            child: images?.length == null
                                ? const Center(
                                    child: Text("Images are empty"),
                                  )
                                : Image.file(File(images![index].path),fit: BoxFit.cover,),
                          ),
                        );
                      },
                    ),
                  ),
                
                SizedBox(height: 50.h,),
                VioletButton(
                  "Upload",
                  () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
