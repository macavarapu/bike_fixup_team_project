import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Gidviewwidget extends StatelessWidget {
  List svgicon = [
    ImageConstants.Open,
    ImageConstants.WIP,
    ImageConstants.OnHold,
    ImageConstants.ReadyOrder,
    ImageConstants.Delivered,
    ImageConstants.Returned,
  ];
  List names = [
    StringConstants.Open,
    StringConstants.WIP,
    StringConstants.OnHold,
    StringConstants.ReadyOrder,
    StringConstants.Delivered,
    StringConstants.Returned,
  ];
  List subnames = [
    StringConstants.a08,
    StringConstants.b00,
    StringConstants.a08,
    StringConstants.b00,
    StringConstants.b00,
    StringConstants.a08,
  ];

  Gidviewwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 100,
     
      child: GridView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           
       
          ),
          itemCount: svgicon.length,
          itemBuilder: (BuildContext ctx, index) {
            return Card(
              elevation: 4,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10)),
              color: AppColors.backgroundColor,
              child: ListTile(
                leading: Column(
                  children: [
                    Text(
                      names[index],
                      style:
                          TextStyle(fontSize: 15, color: AppColors.black),
                    ),
                    Text(
                      subnames[index],
                      style:
                          TextStyle(fontSize: 15, color: AppColors.black),
                    ),
                  ],
                ),
                trailing: SvgPicture.asset(svgicon[index]),
              ),
            
            );
          }),
    );
  }
}
