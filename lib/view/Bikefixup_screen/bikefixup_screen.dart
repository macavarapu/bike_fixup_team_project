import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/services/auth_services.dart';

import 'package:flutter/material.dart';

import '../../utils/alertdialog.dart';
import '../../widgets/bikefixup_screen/text_inwell.dart';

class Bikefixupscreen extends StatefulWidget {
 const  Bikefixupscreen({super.key});

  @override
  State<Bikefixupscreen> createState() => _BikefixupscreenState();
}

class _BikefixupscreenState extends State<Bikefixupscreen> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: AppColors.black,
            ))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(ImageConstants.logo),
                Text(
                  StringConstants.BIKEFIXUP,
                  style: TextStyle(fontSize: 20, color: AppColors.pink),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.pink,
                  child: Text(
                    StringConstants.PARTNER,
                    style:
                        TextStyle(fontSize: 20, color: AppColors.backgroundColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
               Textinwellwidget(
                onTap: () { 
                  Navigator.pushNamed(context, "/profile");
                 },
                 text: StringConstants.MyProfile,
                 titleColor: AppColors.black,
                 
                  ),
                  SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () { 
               showAlertDialog1(context);
                 },
                 text: StringConstants.CreateWorkshop,
                 titleColor: AppColors.black,
                 
                  ),
                  SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () { 
                  Navigator.pushNamed(context, "/myworkshop");
                 },
                 text: StringConstants.MyWorkshop,
                 titleColor: AppColors.black,
                 
                  ),
                  SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {  },
                 text: StringConstants.Mechanic,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {
                  Navigator.pushNamed(context, "/seeappointment");
                  },
                 text: StringConstants.SeeAppointment,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {  },
                 text: StringConstants.BuyFrenchies,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {  },
                 text: StringConstants.OrderStatus,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () { 
                  Navigator.pushNamed(context, "/scanqrcode");
                 },
                 text: StringConstants.PaymentQR,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {  },
                 text: StringConstants.RateUs,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 20,),
                  Textinwellwidget(
                onTap: () {
                  Navigator.pushNamed(context, "/contactus");
                  },
                 text: StringConstants.Help,
                 titleColor: AppColors.black,
                 
                  ),
                    SizedBox(height: 60,),
                  Textinwellwidget(
                onTap: () { 
                  authService.signOut(context);
                 },
                 text: StringConstants.Logout,
                 titleColor: AppColors.red,
                 
                  ),
              ],
              
            ),
            
          ),
        ),
      ),
    );
  }
}
