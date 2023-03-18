import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/forget_password.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/custom_button.dart';
import '../../../utilities/custom_padding.dart';
import '../../../utilities/custom_text_field.dart';
import '../../../utilities/icons.dart';
import '../../../utilities/text.dart';
import '../../../utilities/text_field_label.dart';
import '../Controller/auth_controller.dart';


class Login extends StatelessWidget {
   Login({super.key});

  final _authController=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
     
     return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Obx(()=>
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedPad(size: 36),
            LabelText(text: AppText.emailAddress,color:_authController.isFieldComplete.value?AppColors.greyTextColor:null,),
            CustomTextField(
              hintText: AppText.emailHintText,
              controller:_authController.logninEmailTextCtrl,
              onChanged:(vlaue) {
                  if(_authController.logninPassTextCtrl.text.isNotEmpty&&vlaue.isNotEmpty){
                    _authController.isFieldComplete.value=true;
                  }else{
                    _authController.isFieldComplete.value=false;
                  }
              },
            ),
            const SizedPad(size: 10),
            LabelText(text: AppText.password,color: _authController.isFieldComplete.value?AppColors.greyTextColor:null,),
            CustomTextField(
              hintText: AppText.passwordHintText,
              controller: _authController.logninPassTextCtrl,
               onChanged:(vlaue) {
                  if(_authController.logninEmailTextCtrl.text.isNotEmpty&&vlaue.isNotEmpty){
                    _authController.isFieldComplete.value=true;
                  }else{
                    _authController.isFieldComplete.value=false;
                  }
              },
              obscureText: true,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
      
              },
              
            
               child: Text(AppText.forgetPassword,style:CustomTextStyle.customSize(size: 12.sp,fontWeight: FontWeight.w600,color: AppColors.mainColor,),))),
            const SizedPad(size: 36),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  CustomButton(text: AppText.login,
                  textColor:!_authController.isFieldComplete.value?AppColors.greyTextColor:null,
                  buttonColor: _authController.isFieldComplete.value?AppColors.mainColor:AppColors.buttonGreyColor,
                   ontap: () {
              
                     _authController.signin(context);
                  }),
                  const SizedPad(size: 12),
                  Container(
                    width: 148.w,
                    height: 1.h,
                    decoration: BoxDecoration(color: AppColors.dividerColor),
                  ),
                  const SizedPad(size: 12),
                  CustomButton(text: AppText.loginWithGoogle,buttonColor:AppColors.buttonGreyColor,textColor: AppColors.blackOutColor, ontap: () {},leading:Image.asset(AppIcons.googleIcon,height: 20.h,width: 20.h,),)
                ],
              ),
            )
             
          ],
        ),
      ),
    );
 
  }
}