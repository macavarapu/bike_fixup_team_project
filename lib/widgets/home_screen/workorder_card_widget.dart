import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Workorderwidget extends StatelessWidget {
  const Workorderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
           
            child: Card(
              elevation: 1,
              color: AppColors.backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.WorkOrders,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black),
                        ),
                        Text(
                          StringConstants.Maintainrecordsandcreate,
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColors.blak1,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          StringConstants.taxinvoices,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blak1),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Icon(Icons.search,size: 30,color: AppColors.black,),
                       Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.pink,
              
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.add,size: 25,color: AppColors.backgroundColor,),
                              Text(StringConstants.WorkOrder,style: TextStyle(fontSize: 16,color: AppColors.backgroundColor,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                       )
                      ],
                    )
              
                  ],
                ),
              ),
            ),
          );
  }
}