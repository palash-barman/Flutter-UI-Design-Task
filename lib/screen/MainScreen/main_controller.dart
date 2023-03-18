import 'package:flutter_ui_design_task/screen/HomeScreen/home_screen.dart';
import 'package:flutter_ui_design_task/screen/Profile/profile.dart';
import 'package:get/get.dart';

import '../BookingHistory/booking_history.dart';

class MainController extends GetxController{

    var isSelectIndex=0.obs;
     final List pages = [
    HomeScreen(),
    const BookingHistory(),
   const ProfileScreen()
  ];

  void onItemTapped(int index) {
   isSelectIndex.value=index;
  }
  


}