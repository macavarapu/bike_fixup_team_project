import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class TodyEveningwidget extends StatelessWidget {
  const TodyEveningwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsetsDirectional.all(10),
            // margin: EdgeInsetsDirectional.all(10),
            child: Card(
              color: AppColors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        StringConstants.TodayEarning,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: AppColors.backgroundColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        StringConstants.inr,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: AppColors.backgroundColor),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        StringConstants.date,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.backgroundColor),
                      ),
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Image.asset(ImageConstants.logo,height: 150,width: 100,),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}