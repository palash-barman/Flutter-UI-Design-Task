import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/custom_text_field.dart';
import 'package:flutter_ui_design_task/utilities/icons.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_field_label.dart';
import 'package:get/get.dart';

import '../../../utilities/colors.dart';
import '../Controller/auth_controller.dart';

class CreateAccount extends StatelessWidget {
   CreateAccount({super.key});
  
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
            LabelText(text: AppText.fullName,color:_authController.isCareateFieldComplete.value?AppColors.greyTextColor:null),
            CustomTextField(
              controller: _authController.signupNameTextCtrl,
                onChanged:(vlaue) {
                    if(_authController.signupPassTextCtrl.text.isNotEmpty&&_authController.signupEmailTextCtrl.text.isNotEmpty&&vlaue.isNotEmpty){
                      _authController.isCareateFieldComplete.value=true;
                    }else{
                      _authController.isCareateFieldComplete.value=false;
                    }
                },
              hintText: AppText.fullName,
            ),
            const SizedPad(size: 10),
            LabelText(text: AppText.emailAddress,color:_authController.isCareateFieldComplete.value?AppColors.greyTextColor:null),
            CustomTextField(
              controller: _authController.signupEmailTextCtrl,
              hintText: AppText.emailHintText,
               onChanged:(vlaue) {
                    if(_authController.signupPassTextCtrl.text.isNotEmpty&&_authController.signupNameTextCtrl.text.isNotEmpty&&vlaue.isNotEmpty){
                      _authController.isCareateFieldComplete.value=true;
                    }else{
                      _authController.isCareateFieldComplete.value=false;
                    }
                },
            ),
            const SizedPad(size: 10),
            LabelText(text: AppText.password,color:_authController.isCareateFieldComplete.value?AppColors.greyTextColor:null),
            CustomTextField(
              hintText: AppText.passwordHintText,
              controller: _authController.signupPassTextCtrl,
               onChanged:(vlaue) {
                    if(_authController.signupNameTextCtrl.text.isNotEmpty&&_authController.signupEmailTextCtrl.text.isNotEmpty&&vlaue.isNotEmpty){
                      _authController.isCareateFieldComplete.value=true;
                    }else{
                      _authController.isCareateFieldComplete.value=false;
                    }
                },
              obscureText: true,
            ),
            const SizedPad(size: 36),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  CustomButton(text: AppText.registration, 
                  textColor:!_authController.isCareateFieldComplete.value?AppColors.greyTextColor:null,
                  buttonColor: _authController.isCareateFieldComplete.value?AppColors.mainColor:AppColors.buttonGreyColor,
                  
                  ontap: () {
              _authController.signup(context);
              
                  }),
                  const SizedPad(size: 12),
                  Container(
                    width: 148.w,
                    height: 1.h,
                    decoration: BoxDecoration(color: AppColors.dividerColor),
                  ),
                  const SizedPad(size: 12),
                  CustomButton(text: AppText.signupWithGoogle,buttonColor:AppColors.buttonGreyColor,textColor: AppColors.blackOutColor, ontap: () {},leading:Image.asset(AppIcons.googleIcon,height: 20.h,width: 20.h,),)
                ],
              ),
            )
             
          ],
        ),
      ),
    );
 
 
  }
}
