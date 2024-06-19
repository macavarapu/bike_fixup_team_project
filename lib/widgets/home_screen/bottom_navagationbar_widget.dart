import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../view/earring_screen/earring_screen.dart';
import '../../view/home_screen/home_screen.dart';

class BottomNavagationbarscreen extends StatefulWidget {
  const BottomNavagationbarscreen({super.key});

  @override
  State<BottomNavagationbarscreen> createState() =>
      _BottomNavagationbarscreenState();
}

class _BottomNavagationbarscreenState extends State<BottomNavagationbarscreen> {
  int _SelectIndex = 0;
  final _screens = [
   Homescreen(),
    Earringscreen(),
    Container(),
    Container(),
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   extendBody: true,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      backgroundColor: AppColors.backgroundColor,
      body: _screens[_SelectIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.pink,
          unselectedItemColor: AppColors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _SelectIndex,
          onTap: (index) {
            setState(() {
              _SelectIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,color: AppColors.pink,
                ),
                label: StringConstants.home,),
            BottomNavigationBarItem(
                icon: Icon(
                 CupertinoIcons.bag_fill,
                ),
                label: StringConstants.Earning),
               
            BottomNavigationBarItem(
                icon: Icon(
                Icons.bar_chart
                ),
                label: StringConstants.Report),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_vert,
                ),
                label: StringConstants.More),
          ],
        ),
      ),
    );
  }
}
