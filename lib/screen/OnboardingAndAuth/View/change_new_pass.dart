import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/Controller/change_new_pass_controller.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/success_change_password.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/custom_text_field.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_field_label.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

class ChangeNewPassword extends StatelessWidget {
   ChangeNewPassword({super.key});

  static String routeName="/change_new_password";

  final _changeController=Get.put(ChangeNewPassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal:24.w),
          child: Obx(()=>
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const SizedPad(size: 117),
                  Text(AppText.changeNewPassword,style: CustomTextStyle.h3(fontWeight: FontWeight.w700,color:AppColors.subHeaderTextColor),),
                 const SizedPad(size:4 ),
                 Text( _changeController.isNotEmptyPass.value?AppText.enterDifferent: AppText.enterYourRegisteredEmailBelow,style:CustomTextStyle.h5(fontWeight: FontWeight.w500,color: AppColors.greyTextColor),)
                ,
                const SizedPad(size:56),
                LabelText(text: AppText.newPassword,color:AppColors.greyTextColor,),
                CustomTextField(
                  obscureText: true,
                  controller: _changeController.newPassTextCtrl,
                  hintText: AppText.passwordHintText,
                  onChanged: (val){
                    if(_changeController.comfirmPassTextCtrl.text.isNotEmpty&&val.isNotEmpty){
                      _changeController.isNotEmptyPass.value=true;
                    }else{
                      _changeController.isNotEmptyPass.value=false;
                    }
                  },
                ),
            const SizedPad(size:4 ),
                LabelText(text: AppText.confarmPassword,color:AppColors.greyTextColor,),
                CustomTextField(
                  obscureText: true,
                  hintText: AppText.passwordHintText,
                  controller: _changeController.comfirmPassTextCtrl,
                  onChanged: (val){
                    if(_changeController.newPassTextCtrl.text.isNotEmpty&&val.isNotEmpty){
                      _changeController.isNotEmptyPass.value=true;
                    }else{
                      _changeController.isNotEmptyPass.value=false;
                    }
                  },
                ),
                const SizedPad(size:291),
                Center(
                  child: CustomButton(ontap: (){
                      Navigator.pushNamed(context, SuccessChangePassword.routeName);
          
                  },
                  textColor: _changeController.isNotEmptyPass.value?null:AppColors.greyTextColor,
                  text:_changeController.isNotEmptyPass.value? AppText.resetPassword:AppText.submit,buttonColor:_changeController.isNotEmptyPass.value?null:AppColors.buttonGreyColor,),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}