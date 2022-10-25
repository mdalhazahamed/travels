import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'package:wellpaper/const/app_strings.dart';

import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/theme/app_theme.dart';

import 'package:wellpaper/ui/views/splash_screens.dart';

import 'busness_logic/app_language.dart';

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
      appId: "1:947015259109:android:49a1a5350eac206e21d50c",
      messagingSenderId: "947015259109",
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
            translations: AppLanguages(),
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
