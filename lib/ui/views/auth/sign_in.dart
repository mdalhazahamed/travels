import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:wellpaper/busness_logic/auth.dart';
import 'package:wellpaper/const/app-colors.dart';
import 'package:wellpaper/ui/route/route.dart';
import 'package:wellpaper/ui/style/style.dart';
import 'package:wellpaper/ui/widgets/vio_button.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 60.h, right: 30.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Login\nTo Your Accout",
                        style: TextStyle(
                          fontSize: 32.sp,
                          color: AppColors.violetColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Email");
                        }
                        // reg expression for email validation
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Please Enter a valid email");
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _emailController.text = value!;
                      },
                      decoration: AppStyles().textFieldDecoration(
                          "E-mail", Icon(Icons.email_outlined))),
                  SizedBox(height: 15.h),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: value,
                    validator: (value) {
                      RegExp regex = new RegExp(r'^.{6,}$');
                      if (value!.isEmpty) {
                        return ("Password is required for login");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Enter Valid Password(Min. 6 Character)");
                      }
                    },
                    onSaved: (value) {
                      _passwordController.text = value!;
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              value = !value;
                            });
                          },
                          icon: value == true
                              ? Icon(Icons.remove_red_eye, size: 25.sp)
                              : Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 25.sp,
                                )),
                      prefixIcon: Icon(Icons.lock_outline, size: 25.sp),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(height: 40.h),
                  VioletButton(
                  "Login",
                  () => Auth().login(
                      _emailController.text, _passwordController.text, context),
                ),
                  SizedBox(height: 10.h),
                  Text(
                    "--OR--",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/google.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/facebook.png"),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: "Don't have registration ?",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: " Sign Up",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.violetColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(signUp)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
