import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';

import 'package:flutter_ui_design_task/utilities/restaurant_card.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

import '../RestaurantDetails/restaurant_details.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackgroundColor,
      body: 
      SafeArea(
        child: Column(
          children: [
            Container(
              height: 67.h,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),bottomRight: Radius.circular(16.r)),
                color: AppColors.mainColor
              ),
              child: Text("Booking History",style:CustomTextStyle.h4(fontWeight: FontWeight.w600,color:AppColors.backgroundColor),),
            ),
            SizedBox(height: 24.h,),
          Expanded(child: 
          
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            itemBuilder: (context,index){

              return Column(
                children: [
                   RestaurentCard(image:"assets/image/restaurant3.jpg", location: "Zakir Hossain Rd, Chittagong", name: "Tava Restaurant",buttonText:"Check",ontap:(){Navigator.pushNamed(context, RestaurantDetails.routeName);},),
                   index==2?const SizedPad(size:12):const SizedBox(),
                index==2?  Container(

                      height: 43.h,
                      width: 182.w,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                            color:const Color(0xFF222222).withOpacity(0.06)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: AppColors.contentTextColor,size: 15.sp,),
                          SizedBox(width:10.w,),
                          Text("Booking more ",style:CustomTextStyle.h4(fontWeight: FontWeight.w500,color: AppColors.contentTextColor),)
                        ],
                      ),
                    ):const SizedBox()
                ],
              );
            },
            
            
            
            separatorBuilder: (context,index){
            return Column(
              children: [
                    SizedBox(height: 5.h,),
                    index==2?Container(

                      height: 43.h,
                      width: 182.w,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                            color:const Color(0xFF222222).withOpacity(0.06)
                          )
                        ]
                      ),
                    ):const SizedBox()
              ],
            );
          }, itemCount: 3)),




          ],
      
      
      
        ),
      ),
    );
  }
}