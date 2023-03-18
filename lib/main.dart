import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/routes.dart';
import 'package:get/get.dart';

import 'screen/OnboardingAndAuth/View/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) { 
              return GetMaterialApp(
        title: 'Flutter UI Design Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Inter",
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: AppColors.greyBackgroundColor,
            centerTitle: true
          ),
          
          scaffoldBackgroundColor:AppColors.backgroundColor
        ),
       routes: routes,
       initialRoute: OnboardingScreen.routeName,
      );
  
       },
      
  
    );
  }
}

