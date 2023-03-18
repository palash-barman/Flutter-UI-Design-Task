import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/back_email.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/custom_text_field.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_field_label.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

import '../Controller/forget_controller.dart';

class ForgetPasswordScreen extends StatelessWidget {
   ForgetPasswordScreen({super.key});
static String routeName="/forget_password_screen";

final _forgetController=Get.put(ForgetController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Obx(()=>
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const SizedPad(size:117 ),
                Text(AppText.forgetPassword,style:CustomTextStyle.h3(fontWeight: FontWeight.w700,color: AppColors.subHeaderTextColor),)
               ,
               const SizedPad(size:4 ),
               Text(AppText.enterYourRegisteredEmailBelow,style: CustomTextStyle.h4(fontWeight: FontWeight.w500,color:AppColors.greyTextColor),)
              ,
              const SizedPad(size:56 ),
              LabelText(text:AppText.emailAddress,color:_forgetController.isNotEmptyEmail.value?null:AppColors.greyTextColor,),
             const SizedPad(size:4 ),
              CustomTextField(hintText:AppText.emailHintText,
              controller: _forgetController.emailTextCtrl,
                onChanged: (val){
                  if(val.isNotEmpty){
                    _forgetController.isNotEmptyEmail.value=true;
                  }else{
                    _forgetController.isNotEmptyEmail.value=false;
                  }


                },
              
              ),
           const    SizedPad(size:16 ),
               RichText(text:TextSpan(
                text: AppText.rememberThePassword,
                style: CustomTextStyle.h4(color: AppColors.greyTextColor,fontWeight: FontWeight.w500),
             
                children: [
                  TextSpan(
                    text:AppText.signin,
                  style: CustomTextStyle.h5(color: AppColors.mainColor,fontWeight: FontWeight.w600),
             
                  )
                ]
               )),
             const   SizedPad(size: 344),
              Center(child: CustomButton(text: AppText.submit,
              
              textColor:_forgetController.isNotEmptyEmail.value?null:AppColors.greyTextColor,
              buttonColor: _forgetController.isNotEmptyEmail.value?null:AppColors.buttonGreyColor,
               ontap: (){
                  Navigator.pushNamed(context, BackEmailScreen.routeName);
        
              }))
        
        
            ],
          ),
        ),
      ),
    );
  }
}