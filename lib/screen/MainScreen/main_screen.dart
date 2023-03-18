import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utilities/colors.dart';
import '../../utilities/icons.dart';
import 'main_controller.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  static String routeName ="/main_screen";

  final _mainController=Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body:Obx(() => _mainController.pages.elementAt(_mainController.isSelectIndex.value)),
        bottomNavigationBar:Obx(()=>
           Container(
            height: 64.h,
            decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
             
               color: AppColors.backgroundColor,
               boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.1),
                  offset:const  Offset(0, -5)
                )
               ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
             
              child: BottomNavigationBar(
                   onTap: (index) {
                      _mainController.onItemTapped(index);
                    },
                    selectedItemColor:AppColors.mainColor,
                    
                    backgroundColor:Colors.white,
                   
                    type: BottomNavigationBarType.fixed,
                     currentIndex: _mainController.isSelectIndex.value,
                     showSelectedLabels: false,
                    showUnselectedLabels: false,
                    
                
                items: [
                  BottomNavigationBarItem(icon:Image.asset(
                    _mainController.isSelectIndex.value==0?
                    AppIcons.home:AppIcons.homeOutline,height:30.h,width: 30.h,),label: ""),
                  BottomNavigationBarItem(icon:Image.asset(
                    _mainController.isSelectIndex.value==1?
                    AppIcons.history:AppIcons.historyOutline,height:30.h,width: 30.h,),label: ""),
                  BottomNavigationBarItem(icon:Image.asset(_mainController.isSelectIndex.value==2?AppIcons.person:AppIcons.personOutline,height:30.h,width: 30.h,),label: ""),
            
            
              ]),
            ),
          ),
        ),
    );
  }
}