import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/custom_button.dart';
import '../../../utilities/icons.dart';
import '../../../utilities/text.dart';
import '../../../utilities/text_style.dart';

class SuccessChangePassword extends StatelessWidget {
  const SuccessChangePassword({super.key});

  static String routeName="/success_change_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              
              children: [
                const  SizedPad(size:295 ),
                  Image.asset(AppIcons.successIcon,height: 100.sp,width: 100.sp,)
                 ,const SizedPad(size:29 ),
                  Text(AppText.success,style: CustomTextStyle.h1(fontWeight: FontWeight.w700,color: AppColors.subHeaderTextColor),),
                  const SizedPad(size:9 ),
                  Text(AppText.congratulations,style:CustomTextStyle.h5(color:AppColors.greyTextColor ),textAlign: TextAlign.center,),
            const Spacer(),
             CustomButton(text:AppText.signin, ontap: () {  },),
             
             
            const SizedPad(size:70 ),
             
             
             
              ],
            ),
          ),
        ),


    );
  }
}