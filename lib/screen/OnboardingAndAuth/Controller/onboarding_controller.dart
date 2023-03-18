import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/welcome_screen.dart';
import 'package:get/get.dart';

import '../../../utilities/images.dart';
import '../Model/onboarding_model.dart';

class OnboardingController extends GetxController{



   var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction(BuildContext context) {
    if (isLastPage) {
       Navigator.pushReplacementNamed(context,WelcomeScreen.routeName);
    } else{
       pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
       
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(AppImages.trackingMaps, 'Nearby restaurants',
        ''),
    OnboardingInfo(AppImages.onderIllustration, 'Select the Favorites Menu',
        "Now eat well, don't leave the house,You can choose your favorite food only  with one click"),
    OnboardingInfo(AppImages.safeFood, 'Good food at a cheap price',
        'You can eat at expensive restaurants with affordable price')
  ];
}