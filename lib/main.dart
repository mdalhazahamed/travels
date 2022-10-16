import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellpaper/const/app-colors.dart';
import 'package:wellpaper/const/app_strings.dart';
import 'package:wellpaper/models/onboaring_model.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/views/auth/sign_up.dart';
import 'package:wellpaper/ui/views/on_boarding.dart';
import 'package:wellpaper/ui/views/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(428, 926),
        // minTextAdapt: true,
        // splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStings.appName,
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply(),
              ),
              scaffoldBackgroundColor: AppColors.scaffoldColor,
              primarySwatch: Colors.blue,
            ),
            // initialRoute: splash,
            //  getPages: getPages,
            home: SignUp(),
          );
        });
  }
}
