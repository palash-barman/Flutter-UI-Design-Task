import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,this.leading, this.buttonColor,this.textColor, this.textStyle,required this.text,required this.ontap,this.height,this.radius,this.width});
  String text;
  Function() ontap;
  double? height;
  double? width;
  double? radius;
  TextStyle? textStyle;
  Color? textColor;
  Color? buttonColor;
  Widget? leading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height:height?? 49.h,
          width:width?? 256.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius?? 12.r),
            color:buttonColor??AppColors.mainColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               leading ??const SizedBox(),
           leading==null? const SizedBox():SizedBox(width: 24.w,),
              Text(text,style:textStyle??CustomTextStyle.h5(fontWeight:FontWeight.w700,color:textColor??AppColors.backgroundColor),),
            ],
          ),
    
      ),
    );
  }
}