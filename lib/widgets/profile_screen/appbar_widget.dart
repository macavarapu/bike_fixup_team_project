import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class AppBarwidget extends StatelessWidget {
  final String text;
   void Function() onPressed;

   AppBarwidget({super.key, required this.text ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          onPressed: onPressed,
            // onPressed: () {
            //   Navigator.pop(context);
            // },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: AppColors.black,
            )),
        title: Text(
          text,
          //StringConstants.Profile,
          style: TextStyle(color: AppColors.black),
        ),
        backgroundColor: AppColors.backgroundColor,
      );
  }
}