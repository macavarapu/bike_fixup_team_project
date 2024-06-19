import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';

    class SearchInput extends StatefulWidget {
      @override
      State<SearchInput> createState() => _SearchInputState();
    }
    
    class _SearchInputState extends State<SearchInput> {
      @override
      Widget build(BuildContext context) {
        return Container(
          margin: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor:AppColors.witht,
                      decoration: InputDecoration(
                        fillColor: AppColors.witht,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        hintText: StringConstants.Customer,
                        hintStyle: TextStyle(
                          color: AppColors.grey,
                          fontSize: 18
                        ),
                      prefixIcon: Icon(Icons.search,size: 30,color: AppColors.pink,),
                      ),
                    ),
                  ),
                 Container(
                        height: 80,
                        width: 170,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.pink,
              
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.search,size: 35,color: AppColors.backgroundColor,),
                              Text(StringConstants.Bike,style: TextStyle(fontSize: 20,color: AppColors.backgroundColor,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                       )
                ],
              )
            ],
          ),
        );
      }
    }