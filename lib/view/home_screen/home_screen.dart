import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/card_widget.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/gidview_widget.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/home_app_widget.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/search_input.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/today_evening_widget.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/workorder_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/button_components.dart';
import '../../constants/image_constants.dart';
import '../../widgets/home_screen/bottom_navagationbar_widget.dart';
import '../../widgets/home_screen/continer_widget.dart';
import '../../widgets/home_screen/listview_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            HomeAppwidget(),
            // SizedBox(height: 10,),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      StringConstants.Today,
                      style: TextStyle(fontSize: 25, color: AppColors.black),
                      textAlign: TextAlign.left,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
            ),
        
            Cardwidget(),
            SizedBox(
              height: 20,
            ),
            Workorderwidget(),
            SizedBox(
              height: 20,
            ),
            TodyEveningwidget(),
            SizedBox(
              height: 20,
            ),
            SearchInput(),
            SizedBox(
              height: 20,
            ),
            Continerwidget(),
            SizedBox(
              height: 20,
            ),
            Listviewwidget(),
           
            SizedBox(height: 20,),
          Gidviewwidget(),
          ],
        ),
      ),
   
    );
  }
}
