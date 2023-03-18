import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';


class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.hintText,this.onChanged,this.controller,this.obscureText=false});
    String? hintText;
    TextEditingController? controller;
    Function(String)? onChanged;
    bool obscureText=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:5.h),
      height: 48.h,
      child: TextFormField(
          controller:controller,
          onChanged:onChanged,
          obscureText: obscureText,
          style: CustomTextStyle.h5(fontWeight: FontWeight.w500,color: AppColors.subHeaderTextColor),
          decoration: InputDecoration(
            contentPadding:EdgeInsets.symmetric(horizontal:12.w),
        hintText:hintText,
        hintStyle: CustomTextStyle.customSize(size: 12.sp,color:AppColors.greyTextColor),
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1
          )
        )
      ),
    
      ),
    );
  }
}