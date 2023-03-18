import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

class MenuCard extends StatelessWidget {
   MenuCard({super.key,required this.image,required this.location,required this.name});
  String image;
  String name;
  String location;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10.h),
      height: 212.h,
      width:148.w ,
      
     margin: EdgeInsets.only(bottom:16.h,right:12.w ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color:Colors.black.withOpacity(0.04),
            spreadRadius: 0,
            blurRadius: 8,
            offset:const Offset(0, 2)
          )
        ]
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
                 borderRadius: BorderRadius.only(topLeft:Radius.circular(8.r),topRight: Radius.circular(8.r)),
            child: Image.asset(image,height:103.h,fit: BoxFit.cover,)),
          SizedPad(size: 15.h),
          Text(name,style: CustomTextStyle.h4(fontWeight: FontWeight.w600,color: AppColors.headerTextColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
            SizedPad(size: 4.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Icon(Icons.location_pin,color: AppColors.mainColor,size:10.sp,),
                SizedBox(width:4.w,),
                Expanded(child: Text(location,style: CustomTextStyle.h6(fontWeight: FontWeight.w500,color: AppColors.contentTextColor),maxLines: 2,overflow: TextOverflow.ellipsis,)),
         

            ],
          ),

        
          
        ],
      ),



    )
 
 ;
  }
}
