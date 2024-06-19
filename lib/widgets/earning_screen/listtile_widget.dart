import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Listtilewidget extends StatelessWidget {
  final String title;
  final String text;
  final String subtitle;
  final String titletext;
  
  const Listtilewidget({super.key, required this.title, required this.text, required this.subtitle, required this.titletext});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          Text(
            title,
           // StringConstants.Earningsforthisweek,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ),
          Text(
            text,
            //StringConstants.Earningsforlastweek,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: AppColors.black),
          ),
        ],
      ),
      trailing: Column(
        children: [
          Text(
            subtitle,
            //StringConstants.INR6500,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ),
          Text(
            titletext,
            //StringConstants.INR7900,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
