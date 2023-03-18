import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

class RestaurentCard extends StatelessWidget {
   RestaurentCard({
    super.key,
    required this.image,
    required this.location,
    required this.name,
    this.buttonText,
    this.isBorder=false,
    this.ontap
  });


String name;
String image;
String location;
String? buttonText;
bool isBorder;
Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 94.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
        
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border:Border.all(
          width: isBorder?1:0,
          color:isBorder? const Color(0xFFECECEC):Colors.transparent
    
        ),
        boxShadow: [
          BoxShadow(
            color:const Color(0xFF222222).withOpacity(0.06)
          )
        ],
        color: AppColors.backgroundColor
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(image,height:64.h,width: 64.h,fit: BoxFit.fill,))
         ,
         SizedBox(width:15.w,),
         Expanded(child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
               Text(name,style: CustomTextStyle.h4(fontWeight: FontWeight.w600,color: AppColors.headerTextColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
          const  SizedPad(size:8),
           Row(
      crossAxisAlignment: CrossAxisAlignment.start,
       
      children: [
          Icon(Icons.location_pin,color: AppColors.mainColor,size:10.sp,),
          SizedBox(width:4.w,),
          Expanded(child: Text(location,style: CustomTextStyle.h6(fontWeight: FontWeight.w500,color: AppColors.contentTextColor),maxLines: 2,overflow: TextOverflow.ellipsis,)),
        CustomButton(text:buttonText?? "Book", ontap: (){},height:28.h,width: 88.w,textStyle: CustomTextStyle.customSize(size:12.sp,fontWeight: FontWeight.w600,color: AppColors.backgroundColor),radius:8.r,)
    
      ],
            ),
    
          ],
         ))
         
         
          ],
        ),
      ),
    );
  }
}
