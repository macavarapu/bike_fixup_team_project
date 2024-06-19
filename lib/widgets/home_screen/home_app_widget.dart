import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/image_constants.dart';

class HomeAppwidget extends StatelessWidget {
  const HomeAppwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 10),
          child: Text(StringConstants.Mechanic,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          ),
          ),
          Spacer(),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.toggle_on,size: 45,color: AppColors.pink,)),
           IconButton(onPressed: (){}, 
          icon: Image.asset(ImageConstants.calender,height: 40,width: 30,),
          ),
           IconButton(onPressed: (){
          Navigator.pushNamed(context, "/calendar");
           }, 
          icon: Icon(Icons.calendar_month_rounded,size: 45,color: AppColors.black,)),
         Badge (
          child:  IconButton(onPressed: (){
            Navigator.pushNamed(context, "/bikefixup");
          }, 
          icon: Icon(Icons.notification_important_rounded,size: 45,color: AppColors.black,)),
          
          ),
          
          

        ],
      ),
    );
  }
}