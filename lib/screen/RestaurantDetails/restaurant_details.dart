import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';

import '../../utilities/colors.dart';
import '../../utilities/icons.dart';
import '../../utilities/restaurant_card.dart';
import '../../utilities/text_style.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  static String routeName = "/restaurant_details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 67.h,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.r),
                      bottomRight: Radius.circular(16.r)),
                  color: AppColors.mainColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColors.backgroundColor,
                        size: 20.sp,
                      )),
                  Text(
                    "Restaurant Details",
                    style: CustomTextStyle.h4(
                        fontWeight: FontWeight.w600,
                        color: AppColors.backgroundColor),
                  ),
                  Container(
                    width: 25.w,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                              children: [
                  Container(
                    height: 358.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.backgroundColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tava Restaurant",
                          style: CustomTextStyle.h3(
                              fontWeight: FontWeight.w600,
                              color: AppColors.headerTextColor),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: AppColors.mainColor,
                              size: 10.sp,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Expanded(
                                child: Text(
                              "kazi Deiry, Taiger Pass,Chittagong",
                              style: CustomTextStyle.h6(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.contentTextColor),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )),
                          ],
                        ),
                       const SizedPad(size: 25),
                       ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset("assets/image/restaurant3.jpg",height:182.h,width: double.infinity,fit: BoxFit.fill,),
                       ),
                       const SizedPad(size: 24),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppIcons.time),
                                  Text("Open today",style:CustomTextStyle.customSize(size: 12.sp,fontWeight: FontWeight.w500,color:AppColors.greyTextColor),)
                                ],
                              ),
                              Text("10:00 AM - 12:00 PM",style:CustomTextStyle.customSize(size: 12.sp,fontWeight: FontWeight.w600,color: AppColors.headerTextColor),)
                           
                            ],
                          )
                      ,
                      Row(
                        children: [
                          Image.asset(AppIcons.directions),
                           Text("Visit the Restaurant",style: CustomTextStyle.customSize(size: 12.sp,fontWeight: FontWeight.w600,color:const Color(0xFF2C8DFF))),
                
                        ],
                      )
                       
                        ],
                       ),
                       
                
                      ],
                    ),
                  ),
                
                              const  SizedPad(size: 15),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.backgroundColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 17.w),
                            child: Row(
                              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Booking Restaurant",style: CustomTextStyle.h4(fontWeight: FontWeight.w600,color: AppColors.headerTextColor),),
                   const   SizedPad(size: 4),
                       Text("Check your city Near by Restaurant",style: CustomTextStyle.customSize(size: 12.sp, fontWeight: FontWeight.w500,color: AppColors.contentTextColor),),
                      
                    ],
                  ),
                        const Spacer(),
                   Text("See All",style: CustomTextStyle.customSize(size: 12.sp,fontWeight:FontWeight.w500,color: AppColors.mainColor),),
                   Icon(Icons.chevron_right,color:AppColors.mainColor,size:15.h,)
                          
                              ],
                            ),
                          ),
                        const  SizedPad(size:20),
                        ListView.separated(
                          itemCount: 5,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (constex,index)=>RestaurentCard(isBorder:true,image:"assets/image/restaurant3.jpg", location: "Zakir Hossain Rd, Chittagong", name: "Tava Restaurant",buttonText:"Check",), separatorBuilder: (BuildContext context, int index)=>SizedBox(height:5.h),),
                
                      ],
                    ),
                    
                  )
                              ],
                            ),
                )),
            Container(
              height: 85.h,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 14,
                        color: const Color(0xFF000000).withOpacity(0.09),
                        spreadRadius: 0,
                        offset: const Offset(0, -1))
                  ],
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r))),
              child: CustomButton(
                ontap: () {},
                text: "Booking",
                height: 33.h,
                width: 232.w,
                radius: 10.r,
              ),
            )
          ],
        ),
      ),
    );
  }
}
