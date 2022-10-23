import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellpaper/const/app-colors.dart';
import 'package:wellpaper/const/app_strings.dart';
import 'package:wellpaper/models/onboaring_model.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/theme/app_theme.dart';
import 'package:wellpaper/ui/views/auth/sign_in.dart';
import 'package:wellpaper/ui/views/auth/sign_up.dart';
import 'package:wellpaper/ui/views/button_nav_controller/button_nav_controller.dart';
import 'package:wellpaper/ui/views/button_nav_controller/main_home_screen.dart';
import 'package:wellpaper/ui/views/button_nav_controller/on_boarding.dart';
import 'package:wellpaper/ui/views/splash_screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  //Create initialzation future of build
  final Future<FirebaseApp> _initilization = Firebase.initializeApp(
    name: "shelter",
    options: FirebaseOptions(
      apiKey: "AIzaSyBoF5j-BPMikeIFEFH4pfzSqJszyW78X4M",
      appId: "1:947015259109:android:0c45a63ee904dce821d50c",
      messagingSenderId: "947015259109	",
      projectId: "shelter-travels-916ce",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //initailize flutterFile
      future: _initilization,
      builder: (context, snapshot) {
        //Check for errors
        if (snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        //Once complete, show your aplication
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        //Otherwise ,show something whilst wating for initzation to compelete
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
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
            //translations: AppLanguages(),
            locale: Locale('en', 'US'),
            fallbackLocale: Locale('en', 'US'),
            theme: AppTheme().lightTheme(context),
            darkTheme: AppTheme().darkTheme(context),
            themeMode: ThemeMode.system,
            initialRoute: splash,
            getPages: getPages,
            home: SplashScreen(),
          );
        });
  }
}
