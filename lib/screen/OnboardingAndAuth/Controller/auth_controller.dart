import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screen/MainScreen/main_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController{

    TextEditingController logninEmailTextCtrl=TextEditingController();
    TextEditingController logninPassTextCtrl=TextEditingController();
    TextEditingController signupEmailTextCtrl=TextEditingController();
    TextEditingController signupNameTextCtrl=TextEditingController();
    TextEditingController signupPassTextCtrl=TextEditingController();



    var isFieldComplete=false.obs;
    var isCareateFieldComplete=false.obs;
    var initialIndex=0.obs;



signup(BuildContext context)async{
try {
  if(signupEmailTextCtrl.text.isNotEmpty&&signupNameTextCtrl.text.isNotEmpty&&signupPassTextCtrl.text.isNotEmpty){
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();
  
  await prefs.setString('userName',signupNameTextCtrl.text.trim());
  await prefs.setString('password',signupPassTextCtrl.text.trim());
  
  Navigator.pushNamedAndRemoveUntil(context, MainScreen.routeName, (route) => false);
  
  }else{
    Get.snackbar("Sign up error","Please enter a email user name and password.");
  }
} on Exception catch (e) {
  if (kDebugMode) {
    print("sign up error : $e");
  }
  // TODO
}

}

signin(BuildContext context)async{

try {
  if(logninEmailTextCtrl.text.isNotEmpty&&logninPassTextCtrl.text.isNotEmpty){
    final prefs = await SharedPreferences.getInstance();
    final String? userName = prefs.getString('userName');
    final String? password = prefs.getString('password');
   
    if(userName==logninEmailTextCtrl.text&&password==logninPassTextCtrl.text){
          Navigator.pushNamedAndRemoveUntil(context, MainScreen.routeName, (route) => false);
    }else if(userName==null&&password==null){
        Get.snackbar("Error", "User-not-found ",);

    } 
    
    
    else {
      Get.snackbar("Login error ", "Invalied User name and password");
  
    }
  
  }else{
   Get.snackbar("Login Error","Please enter  user name and password.");
  
  }
} on Exception catch (e) {
  if (kDebugMode) {
    print("login error $e");
  }
  // TODO
}


}



}