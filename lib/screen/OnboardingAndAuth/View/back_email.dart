import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/screen/OnboardingAndAuth/View/change_new_pass.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/icons.dart';
import 'package:flutter_ui_design_task/utilities/text.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

class BackEmailScreen extends StatelessWidget {
  const BackEmailScreen({super.key});

  static String routeName="/back_email_screeen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:46.w),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const    SizedPad(size: 295),
              
          Image.asset(AppIcons.successIcon,height: 100.sp,width:100.sp,)
               ,const    SizedPad(size: 29),
               Text(AppText.success,style: CustomTextStyle.h1(color: AppColors.subHeaderTextColor,fontWeight: FontWeight.w700),),
              
              
          const    SizedPad(size: 8),
          Text(AppText.pleaseCheckEmail,style:CustomTextStyle.h4(fontWeight: FontWeight.w500,color: AppColors.contentTextColor),textAlign: TextAlign.center,),
              
              
           const    SizedPad(size: 28),
              
           RichText(text: TextSpan(
          text: AppText.cannotGetEmail,
          style: CustomTextStyle.h4(fontWeight: FontWeight.w700,color:AppColors.contentTextColor),
            children: [
          TextSpan(
            text: AppText.resubmit,
            style: CustomTextStyle.h4(fontWeight: FontWeight.w700,color:AppColors.mainColor)
          )
            ]
           )),
               
              
              
              
            const    SizedPad(size:137),
              
            CustomButton(text: AppText.backEmail, ontap: (){

              Navigator.pushNamed(context, ChangeNewPassword.routeName
              );
              
            })
              
              
            ],
          ),
        ),
      ),

    );
  }
}