import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Textwidget extends StatelessWidget {
  final String text;
  const Textwidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        //StringConstants.login,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.black),
      ),
    );
  }
}
