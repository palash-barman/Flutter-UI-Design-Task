import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/auth_screen.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/forget_password.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/onboarding_screen.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/success_change_password.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/welcome_screen.dart';
import 'package:flutter_ui_design_task/screen/RestaurantDetails/restaurant_details.dart';

import '../screen/MainScreen/main_screen.dart';
import '../screen/OnboardingAndAuth/View/back_email.dart';
import '../screen/OnboardingAndAuth/View/change_new_pass.dart';

var routes =<String,WidgetBuilder>{

  OnboardingScreen.routeName:(context) =>  OnboardingScreen(),
  WelcomeScreen.routeName:(context) => WelcomeScreen(),
  ForgetPasswordScreen.routeName:(context) => ForgetPasswordScreen(),
  BackEmailScreen.routeName:(context) => const BackEmailScreen(),
  ChangeNewPassword.routeName:(context) => ChangeNewPassword(),
  SuccessChangePassword.routeName:(context) => const SuccessChangePassword(),
  MainScreen.routeName:(context) => MainScreen(),
  RestaurantDetails.routeName:(context) => const RestaurantDetails(),
  AuthScreen.routeName:(context) => const AuthScreen()


};