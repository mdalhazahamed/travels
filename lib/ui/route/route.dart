import 'package:get/get.dart';
import 'package:wellpaper/ui/views/auth/sign_up.dart';
import 'package:wellpaper/ui/views/on_boarding.dart';
import 'package:wellpaper/ui/views/pages/home_page.dart';
import 'package:wellpaper/ui/views/splash_screens.dart';

const String splash = '/splash_screen';
const String onboarding = '/onboarding';
const String homePage = '/home_Page';
const String signUp = '/signUp_screen';

//contrat our page routes

List<GetPage> getPages = [
  GetPage(name: splash, page: () =>  SplashScreen()),
   GetPage(name: onboarding, page: () =>  OnboardingScreen()),
    GetPage(name: signUp, page: () =>  SignUp()),
  GetPage(name: homePage, page: () =>  HomePage()),
];
