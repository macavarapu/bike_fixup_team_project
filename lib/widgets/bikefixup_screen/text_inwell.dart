import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';

class Textinwellwidget extends StatelessWidget {
  final String text;
  void Function() onTap;
  final Color titleColor;

  Textinwellwidget(
      {super.key,
      required this.text,
      required this.titleColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: AppColors.backgroundColor,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
                onTap: onTap,
                child: Text(
                  text,
                  //StringConstants.MyProfile,
                  style: TextStyle(fontSize: 25, color: titleColor),
                )),
          ],
        ),
      ),
    );
  }
}
