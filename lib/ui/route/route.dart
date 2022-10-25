import 'package:get/get.dart';
import 'package:wellpaper/ui/views/auth/sign_in.dart';
import 'package:wellpaper/ui/views/auth/sign_up.dart';
import 'package:wellpaper/ui/views/button_nav_controller/button_nav_controller.dart';
import 'package:wellpaper/ui/views/button_nav_controller/details_screen.dart';
import 'package:wellpaper/ui/views/button_nav_controller/search-screen.dart';
import 'package:wellpaper/ui/views/button_nav_controller/see_all_screen.dart';
import 'package:wellpaper/ui/views/drawer_pages/how_to_use.dart';
import 'package:wellpaper/ui/views/drawer_pages/privacy.dart';
import 'package:wellpaper/ui/views/drawer_pages/settings.dart';
import 'package:wellpaper/ui/views/drawer_pages/support.dart';
import 'package:wellpaper/ui/views/button_nav_controller/drawer_screen.dart';
import 'package:wellpaper/ui/views/button_nav_controller/main_home_screen.dart';
import 'package:wellpaper/ui/views/button_nav_controller/on_boarding.dart';
import 'package:wellpaper/ui/views/button_nav_controller/pages/nav_add_last.dart';
import 'package:wellpaper/ui/views/button_nav_controller/pages/nav_home.dart';
import 'package:wellpaper/ui/views/privecy_policy.dart';
import 'package:wellpaper/ui/views/splash_screens.dart';
import 'package:wellpaper/ui/views/user_form.dart';

import '../views/drawer_pages/faq.dart';
import '../views/drawer_pages/profile.dart';

const String splash = '/splash_screen';
const String onboarding = '/onboarding';
const String homePage = '/home_Page';
const String signUp = '/signUp_screen';
const String signIn = '/signIn_screen';
const String userForm = '/userForm_screen';
const String userPolicy = '/userPolicy_screen';
const String mainHomeScreen = '/mainHome_Screen';
const String faqScreen = '/faqScreen';
const String privacyScreen = '/privacyScreen';
const String settingsScreen = '/settingsScreen';
const String supportScreen = '/supportScreen';
const String howToUseScreen = '/howToUseScreen';
const String navAddLastStep = '/navAddLastStep';
const String searchScreen = '/searchScreen';
const String seeAllScreen = '/seeAllScreen';
const String detailsScreen = '/detailsScreen';
const String proflie = '/proflie';

//contrat our page routes

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: signUp,
    page: () => SignUp(),
  ),
  GetPage(
    name: signIn,
    page: () => SignIn(),
  ),
  GetPage(
    name: homePage,
    page: () => HomePage(),
  ),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(
    name: userPolicy,
    page: () => PrivacyPolicy(),
  ),
  GetPage(
    name: mainHomeScreen,
    page: () => MainHomeScreen(),
  ),
  GetPage(
    name: faqScreen,
    page: () => FAQ(),
  ),
  GetPage(
    name: privacyScreen,
    page: () => Privacy(),
  ),
  GetPage(
    name: supportScreen,
    page: () => Support(),
  ),
  GetPage(
    name: settingsScreen,
    page: () => Settings(),
  ),
  GetPage(
    name: howToUseScreen,
    page: () => HowToUse(),
  ),
  GetPage(
    name: navAddLastStep,
    page: () {
      NavAddLastStep _addLastStep = Get.arguments;
      return _addLastStep;
    },
  ),
  GetPage(
    name: searchScreen,
    page: () => SearchScreen(),
  ),
   GetPage(
    name: seeAllScreen,
    page: () {
      SeeAll _seeAll = Get.arguments;
      return _seeAll;
    },
  ),
  GetPage(
    name: detailsScreen,
    page: () {
      DetailsSCreen _detailsSCreen = Get.arguments;
      return _detailsSCreen;
    },
  ),
  GetPage(
    name: proflie,
    page: () => UserProfile(),
  ),
];
