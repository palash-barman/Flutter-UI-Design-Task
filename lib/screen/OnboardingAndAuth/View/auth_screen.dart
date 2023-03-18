import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/create_account.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/login.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/images.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

import '../Controller/auth_controller.dart';

class AuthScreen extends StatefulWidget {
 const AuthScreen({super.key});

 static String routeName ="/auth_screen";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late TabController _tabController;

   final _authController=Get.put(AuthController());

 

  @override
  void initState() {

    super.initState();
    _tabController = TabController(length: 2, vsync: this,initialIndex:_authController.initialIndex.value );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
            
            Column(
              children: [
                const  SizedPad(size: 135),
            Center(child: Image.asset(AppImages.welcomeImage,fit:BoxFit.fill,height:225.h,width: 280.w,))
               
              ],
            ),
             Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF858585).withOpacity(0.5),
             ),
      
            Positioned(
              top: 236.h,
              child: 
            Container(
             height:576.h,
              width:375.w,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(36.r),topRight: Radius.circular(36.r))
              ),
              child: Column(
                children: [
                    const SizedPad(size: 24),
                      Center(
                        child: Container(
                          height: 6.h,
                          width: 48.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD2D4D8),
                              borderRadius: BorderRadius.circular(6.r)),
                        ),
                      ),
                       TabBar(
                        
                          controller: _tabController,
                          labelColor: AppColors.mainColor,
                          unselectedLabelColor: AppColors.greyTextColor,
                          indicatorColor: AppColors.mainColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: CustomTextStyle.h4(
                              fontWeight: FontWeight.w600, color: AppColors.mainColor),
                          unselectedLabelStyle: CustomTextStyle.h4(
                              fontWeight: FontWeight.w600,
                              color: AppColors.greyTextColor),
                          tabs: [
                            Tab(
                              text: AppText.createAccount,
                            ),
                            Tab(
                              text: AppText.login,
                            )
                          ]),
                    Expanded(
                          child: TabBarView(controller: _tabController, children:  [
                        CreateAccount(),
                        Login(),
                      ]))
                ],
              ),
            ))
      
              // Positioned(
              //  top: 135.h,
              //   child: Container(
                 
              //     child: Column(
              //       children: [
              //         const SizedPad(size: 24),
              //         Center(
              //           child: Container(
              //             height: 6.h,
              //             width: 48.w,
              //             decoration: BoxDecoration(
              //                 color: const Color(0xFFD2D4D8),
              //                 borderRadius: BorderRadius.circular(6.r)),
              //           ),
              //         ),
              //         TabBar(
                        
              //             controller: _tabController,
              //             labelColor: AppColors.mainColor,
              //             unselectedLabelColor: AppColors.greyTextColor,
              //             indicatorColor: AppColors.mainColor,
              //             indicatorSize: TabBarIndicatorSize.label,
              //             labelStyle: CustomTextStyle.h4(
              //                 fontWeight: FontWeight.w600, color: AppColors.mainColor),
              //             unselectedLabelStyle: CustomTextStyle.h4(
              //                 fontWeight: FontWeight.w600,
              //                 color: AppColors.greyTextColor),
              //             tabs: [
              //               Tab(
              //                 text: AppText.createAccount,
              //               ),
              //               Tab(
              //                 text: AppText.login,
              //               )
              //             ]),
              //         Expanded(
              //             child: TabBarView(controller: _tabController, children:  [
              //           CreateAccount(),
              //           Login(),
              //         ]))
              //       ],
              //     ),
              //   ),
              // ),
            
            
            
            
            ],
          ),
        ),
      ),
    );
  }
}
