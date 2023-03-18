import 'package:get/get.dart';

import '../Model/menu_model.dart';
import '../Model/restaurant_model.dart';

class HomeController extends GetxController{


      var isSeliderIndex=0.obs;

List<MenuModel> menuList=[
  MenuModel(image: "assets/image/menu.png", location: "Ambrosia Hotel & Restaurant", name: "Chicken Biryani"),
   MenuModel(image: "assets/image/menu1.jpg", location: "Ambrosia Hotel & Restaurant", name: "Chicken Biryani"),
    MenuModel(image: "assets/image/menu2.jpg", location: "Ambrosia Hotel & Restaurant", name: "Chicken Biryani"),
     MenuModel(image: "assets/image/menu3.jpg", location: "Ambrosia Hotel & Restaurant", name: "Chicken Biryani"),

];

List<RestaurantModel>restaurantList=[
  RestaurantModel(image: "assets/image/restaurent1.jpg", location: "Ambrosia Hotel & Restaurant", name: "Tava Restaurant"),
   RestaurantModel(image: "assets/image/restaurant3.jpg", location: "Ambrosia Hotel & Restaurant", name: "Haat khola"),
    RestaurantModel(image: "assets/image/restaurent2.jpg", location: "Ambrosia Hotel & Restaurant", name: "Chicken Biryani House"),
     RestaurantModel(image: "assets/image/restaurent5.jpg", location: "Ambrosia Hotel & Restaurant", name: "Haat khola"),

];

    var sliderImage=[
       "assets/image/banner2.jpg",
       "assets/image/banner3.jpg",
       "assets/image/banner4.jpg",
    ];





}