import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Continerwidget extends StatelessWidget {
  const Continerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
              Container(
                height: 100,
                width: 200,
                
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.witht12),
                child: Card(
                  elevation: 1,
                  color: AppColors.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConstants.ToCollect,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.witht12),
                            ),
                            Text(
                              StringConstants.INR887600,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                         SvgPicture.asset(ImageConstants.wrong,height: 50,width: 50,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.witht12),
                child: Card(
                  elevation: 1,
                  color: AppColors.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConstants.ToCollect,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.witht12),
                            ),
                            Text(
                              StringConstants.INR463700,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black),
                            )
                          ],
                        ),
                         Row(
                          children: [
                         SvgPicture.asset(ImageConstants.right,height: 50,width: 50,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
         
  }
}