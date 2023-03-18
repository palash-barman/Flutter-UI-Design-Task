import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/Controller/onboarding_controller.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/welcome_screen.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/icons.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key});

  static String routeName="/onboarding_screen";
  final _onboardController=Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Stack(
  alignment: Alignment.bottomCenter,
  children: [
      PageView.builder(
        controller: _onboardController.pageController,
        itemCount: _onboardController.onboardingPages.length,
        onPageChanged: _onboardController.selectedPageIndex,
        itemBuilder: (context,index)=>Container(
          padding: EdgeInsets.symmetric(horizontal:31.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              
              child:Image.asset(_onboardController.onboardingPages[index].imageAsset)
            ),
            
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(_onboardController.onboardingPages[index].title,style:CustomTextStyle.h1(fontWeight: FontWeight.w600,color: AppColors.headerTextColor),),
           const   SizedPad(size: 16),
              
               Text(_onboardController.onboardingPages[index].description,style: CustomTextStyle.customSize(size: 12.sp,color: AppColors.onboardtextColor),textAlign: TextAlign.center,),
            ],
          ),
        ),
        


          ] ,
        ),
      )),

      Positioned(
        bottom: 35,
        right: 0,
        left: 0,
        child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
   TextButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context,WelcomeScreen.routeName);
                },
                child: Text("Skip",style: CustomTextStyle.h4(color:AppColors.onboardtextColor),)),
                  Row(
              children:  List.generate(
                  _onboardController.onboardingPages.length,
                  (index) => Obx(() {
                    return AnimatedContainer(
                      margin: const EdgeInsets.all(4),
                      width: 10.r,
                      height: 10.r,
                      decoration: BoxDecoration(
                        color: _onboardController.selectedPageIndex.value == index
                            ? AppColors.mainColor
                            : AppColors.greyColor,
                        shape: BoxShape.circle,
                      ), duration:const Duration(milliseconds: 500),
                    );
                  }),
                ),
            ),
             
             
             IconButton(
            onPressed:(){
              _onboardController.forwardAction(context);
            },
            icon: Image.asset(AppIcons.arrowLeftIcon,height: 14.h,width: 14.h,))
              
        ],
      )),


        

  ],
),

    );
  }
}