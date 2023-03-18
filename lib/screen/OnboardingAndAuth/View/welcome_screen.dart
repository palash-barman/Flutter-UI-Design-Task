import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/auth_screen.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/images.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

import '../Controller/auth_controller.dart';

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({super.key});

  static String routeName="/welcome_screen";
  final _authController=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal:19.w),
        child: Column(
          
         
          children: [
          const  SizedPad(size: 135),
          Center(child: Image.asset(AppImages.welcomeImage,fit:BoxFit.fill,height:225.h,width: 280.w,))
            ,const  SizedPad(size: 55),
            Text(AppText.welcome,style:CustomTextStyle.h1(color:AppColors.headerTextColor,fontWeight: FontWeight.w600),)
          ,  const  SizedPad(size: 8),
          Text(AppText.welDes,style: CustomTextStyle.h5(color:AppColors.onboardtextColor),textAlign: TextAlign.center,)
          , const  SizedPad(size: 95),
        
          CustomButton(text:AppText.createAccount, ontap:(){
           _authController.initialIndex.value=0;
           Navigator.pushReplacementNamed(context,  AuthScreen.routeName);
         
      
          }),
         
         const  SizedPad(size: 16),
           CustomButton(text:AppText.login, ontap:(){
 _authController.initialIndex.value=1;
    Navigator.pushReplacementNamed(context, AuthScreen.routeName);
      
            
           },buttonColor:AppColors.mainShadowColor,textColor:AppColors.greenTeal,),
         const  SizedPad(size: 16),
         
         RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
          text: "By Logging In Or Registering, You Have Agreed To ",
          style: CustomTextStyle.h6(color:AppColors.youngNight)
        
         , children: [
          TextSpan(
            text: "The Terms And Conditions",
             style: CustomTextStyle.h6(color:AppColors.mainColor)
        
          ),
          TextSpan(
            text: " And ",
             style: CustomTextStyle.h6(color:AppColors.youngNight)
        
          ),
           TextSpan(
            text: "Privacy Policy.",
             style: CustomTextStyle.h6(color:AppColors.mainColor)
        
          )
      
          ]
         ))
          ],
        ),
      ),
    );
  }
}