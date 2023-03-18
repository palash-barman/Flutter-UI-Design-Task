import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/custom_padding.dart';
import 'package:flutter_ui_design_task/utilities/icons.dart';
import 'package:flutter_ui_design_task/utilities/images.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';
import 'package:get/get.dart';

import '../../utilities/menu_card.dart';
import '../../utilities/restaurant_card.dart';
import '../RestaurantDetails/restaurant_details.dart';
import 'Controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

final _homeController =Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackgroundColor,
      appBar: AppBar(
        leading: Image.asset(AppIcons.menuIcon),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
              color: AppColors.mainColor,
              size: 15.sp,
            ),
            Text(
              "Agrabad 435, Chittagong",
              style: CustomTextStyle.customSize(
                  size: 12.sp,
                  color: AppColors.onboardtextColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.backgroundColor,
            backgroundImage: AssetImage(AppImages.person)
          ),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedPad(size: 10),

            // <--------------------- Search Section---------------->
            Container(
              padding: EdgeInsets.symmetric(horizontal: 48.w),
              height: 36.h,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: AppColors.textFillColor,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 15.h,
                      color: AppColors.greyTextColor,
                    ),
                    hintText: "Search",
                    hintStyle: CustomTextStyle.customSize(
                        size: 12.sp, color: AppColors.greyTextColor),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.r),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedPad(size: 28),

            // <--------------------- Slider ---------------->

            CarouselSlider(
              options: CarouselOptions(
                height: 120.h,
                autoPlay: true,
                onPageChanged: (index,reson){
                    _homeController.isSeliderIndex.value=index;
                }
              
              
              ),
              items: _homeController.sliderImage.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width:280.w ,
                        margin: EdgeInsets.symmetric(horizontal:11.w),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(image: AssetImage(i),fit: BoxFit.cover)
                        ),
                        
                        );
                  },
                );
              }).toList(),
            ),
            SizedPad(size: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children:  List.generate(
                  _homeController.sliderImage.length,
                  (index) => Obx(() {
                    return AnimatedContainer(
                      margin: const EdgeInsets.all(4),
                      width: 10.r,
                      height: 10.r,
                      decoration: BoxDecoration(
                        color: _homeController.isSeliderIndex.value == index
                            ? AppColors.mainColor
                            : AppColors.greyColor,
                        shape: BoxShape.circle,
                      ), duration:const Duration(milliseconds: 500),
                    );
                  }),
                ),
            ),
const   SizedPad(size: 36),
          ///<------------------ Top Restaurent ------------------->
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 17.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today  New Arivable",style: CustomTextStyle.h4(fontWeight: FontWeight.w600,color: AppColors.headerTextColor),),
                 const   SizedPad(size: 4),
                     Text("Best of the today  food list update",style: CustomTextStyle.customSize(size: 12.sp, fontWeight: FontWeight.w500,color: AppColors.contentTextColor),),
                    
                  ],
                ),
        const Spacer(),
                 Text("See All",style: CustomTextStyle.customSize(size: 12.sp,fontWeight:FontWeight.w500,color: AppColors.contentTextColor),),
                 Icon(Icons.chevron_right,color:const Color(0xFF89909E),size:15.h,)
          
              ],
            ),
          ),
          const   SizedPad(size: 14),
          
          
          SizedBox(
            height: 212.h,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 18.h),
              scrollDirection: Axis.horizontal,
              itemCount: _homeController.menuList.length,
              itemBuilder:(context,index){
                final data=_homeController.menuList[index];
                return MenuCard(image: data.image, location:data.location, name:data.name);
              }
  )),
   const  SizedPad(size:15),

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
                 Text("See All",style: CustomTextStyle.customSize(size: 12.sp,fontWeight:FontWeight.w500,color: AppColors.contentTextColor),),
                 Icon(Icons.chevron_right,color:const Color(0xFF89909E),size:15.h,)
          
              ],
            ),
          ),
          const   SizedPad(size: 14),
          ListView.separated(
            itemCount:_homeController.restaurantList.length,
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
                final data=_homeController.restaurantList[index];
            return RestaurentCard(image:data.image, location:data.location, name:data.name,ontap: (){
              Navigator.pushNamed(context, RestaurantDetails.routeName);
            },);
          }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height:5.h,) ;},)
          



          ],
        ),
      ),
    );
  }
}





