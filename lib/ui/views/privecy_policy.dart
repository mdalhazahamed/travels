import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/widgets/vio_button.dart';

class PrivecyPlicy extends StatelessWidget {
  PdfViewerController? _pdfViewerController;
  RxBool _loaded = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, top: 60.h, right: 30.w),
          child: Column(
            children: [
              Expanded(
                child: SfPdfViewer.network(
                  "https://firebasestorage.googleapis.com/v0/b/shelter-travels-916ce.appspot.com/o/privacy%20policy%2Fdownload%20(1).pdf?alt=media&token=d0beff71-1059-41ae-986e-9f4313e0e36b",
                  onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                    _loaded.value = true;
                  },
                ),
              ),
              Obx(
                () => _loaded == true
                    ? VioletButton(
                        "Agree",
                        () => Get.toNamed(mainHomeScreen),
                      )
                    : Text("Still Loading"),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
