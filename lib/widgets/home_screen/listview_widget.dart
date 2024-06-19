import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';
import 'gidview_widget.dart';

class Listviewwidget extends StatelessWidget {
  List icons = [
    ImageConstants.fingerprint,
    ImageConstants.estimer,
    ImageConstants.workorder,
    ImageConstants.directsale,
    ImageConstants.billing,
  ];
  List iconsnames = [
    StringConstants.Inspection,
    StringConstants.Estimate,
    StringConstants.WorkOrder,
    StringConstants.DirectSale,
    StringConstants.Billing,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: icons.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              // height:120,
              width: 120,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.with500,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  SvgPicture.asset(
                    icons[index],
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    iconsnames[index],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                
                ],
              ),
              
            );
            
          }),
          
    );
  }
}
