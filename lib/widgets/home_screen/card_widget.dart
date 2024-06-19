import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/button_components.dart';
import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      
      child: Card(
        color: AppColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                        StringConstants.VerifyYourGSTDetails,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      ),
                      SizedBox(height: 10,),
                         Text(
                        StringConstants.Loremipsumdollarsitmet,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                       Text(
                        StringConstants.concetametdir,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      SizedBox(height: 20,),
                       Container(
                          height: 60,
                          width:200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.pink,
                
                          ),
                          child: Text(StringConstants.GetStarted,style: TextStyle(fontSize: 20,color: AppColors.backgroundColor,fontWeight: FontWeight.w600),),
                         ),
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConstants.tax,height: 150,width: 100,),
                ],
              )
            ],
          ),
        ),
      ),
    );
   
  }
}