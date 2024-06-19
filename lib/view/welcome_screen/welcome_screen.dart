
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/view/home_screen/home_screen.dart';
import 'package:bike_fixup_team_project/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/routes_constants.dart';
import '../Register_screen/Register_sccreen.dart';


class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
    @override
  void initState() {
    super.initState();
   Future.delayed(Duration(seconds: 2), ()  async{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? data =  preferences.getString("phonenumber")??"";
      if (data.isNotEmpty) {
       Navigator.pushNamed(context, "/bottom");
       // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppBar()));
      } else {
        // Get.offAll(Loginscreen());
         Navigator.pushNamed(context, "/login");
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
       child: Center(
        child: Image.asset(ImageConstants.logo),
       ),
      ),
    );
  }
}
