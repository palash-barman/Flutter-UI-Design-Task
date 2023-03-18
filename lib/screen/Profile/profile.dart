import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_button.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/icons.dart';
import 'package:flutter_ui_design_task/utilities/images.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const SizedPad(size: 61),
              Container(
               
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 13.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: AppColors.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.06),
                          blurRadius: 6,
                          offset: const Offset(0, 2))
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: AssetImage(AppImages.person),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Palash Chandra Barman",
                              style: CustomTextStyle.h4(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.headerTextColor),maxLines: 1,overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "palash900202@gmail.com",
                              style: CustomTextStyle.h6(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greyTextColor),
                                  maxLines: 1,overflow: TextOverflow.ellipsis
                            ),
                          ],
                        )),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                                radius: 22.r,
                                backgroundColor: const Color(0xFFF9F9F9),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: AppColors.greyTextColor,
                                  size: 15.r,
                                )),
                            Positioned(
                               
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xFFF24F4F),
                                  radius: 8.r,
                                  child: Text(
                                    "2",
                                    style: CustomTextStyle.customSize(
                                        size: 8.sp, fontWeight: FontWeight.w500),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),

                    ListTile(
                      dense: true,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 0,
                      leading: Icon(Icons.call,color: AppColors.mainColor,),
                      title: Text("01796165636",style:CustomTextStyle.customSize(
            size: 18.sp, color: const Color(0xFF374151)),),
            trailing: CustomButton(text: "Call", ontap: ()async{

              Uri url=Uri(scheme: "tel",path: "01796165636");
              if(await canLaunchUrl(url)){

                await launchUrl(url);

              }else{
                print("Cann't launch this url");
              }


            },height: 30.h,width: 50.w,radius: 5.r,),
                    )

                  ],
                ),
              ),
              const SizedPad(size: 40),
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: AppColors.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.06),
                          blurRadius: 6,
                          offset: const Offset(0, 2))
                    ]),
                alignment: Alignment.center,
                child: ListTile(
                  dense: true,
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 5,
                  leading: Image.asset(AppIcons.personRounded,
                      height: 20.h, width: 20.h),
                  title: Text(
                    "Account setting",
                    style: CustomTextStyle.customSize(
                        size: 18.sp, color: const Color(0xFF374151)),
                  ),
                  trailing: Image.asset(
                    AppIcons.edit,
                    height: 20.h,
                    width: 20.h,
                  ),
                ),
              ),
               const SizedPad(size:12),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: AppColors.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.06),
                          blurRadius: 6,
                          offset: const Offset(0, 2))
                    ]),
                child: Column(
                  children: [
                    buildTile(text: "Language", icon: AppIcons.language),
                    buildTile(text: "Feedback", icon: AppIcons.feedback),
                    buildTile(text: "Rate Us", icon: AppIcons.rateUs),
                    buildTile(text: "New Version", icon: AppIcons.newVersion)
                  ],
                ),
              ),
        const  SizedPad(size: 40),
        CustomButton(text:"Logout", ontap: (){},buttonColor: const Color(0xFFEB4646),
        height: 35.h,width: 111.w,radius: 11.r,)



            ],
          ),
        ),
      ),
    );
  }

  Widget buildTile({String? icon, String? text}) {
    return ListTile(
      dense: true,
      minLeadingWidth: 0,
      minVerticalPadding: 0,
      horizontalTitleGap: 24.w,
      leading: Image.asset(icon!, height: 20.h, width: 20.h),
      title: Text(
        text!,
        style: CustomTextStyle.customSize(
            size: 18.sp, color: const Color(0xFF374151)),
      ),
      trailing: Icon(Icons.chevron_right,color:const Color(0xFF89909E),size:20.h,)
          
    );
  }
}
