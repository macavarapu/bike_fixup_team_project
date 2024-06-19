import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:flutter/material.dart';

import '../../core/api_mixin.dart';

class CustomDropDown extends StatelessWidget with BaseContextHelpers {
  final List<DropdownMenuItem<Object>> items;
  final Function(Object?) onChanged;
  final Function(Object?)onSaved;
  final String hintText;
  final Color? bgcolor;
  final BoxDecoration? decoration;
  
  final TextStyle? style;
  final TextStyle? hintstyle;
  final Object? value;
  const CustomDropDown(
      {super.key,
      this.style,
      //required this.dropDownList,
      this.hintstyle,
      required this.items,
      required this.onChanged,
      required this.hintText,
      this.value,
      this.decoration,
      this.bgcolor, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
          BoxDecoration(
              color: bgcolor ?? AppColors.witht,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.witht)
              
              ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
                child: DropdownButton(
              padding: EdgeInsets.only(left: 8, right: 8),
              items: items,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.black,
              ),
              value: value,
              hint: Text(
                hintText,
                style: TextStyles.body4(
                  color: AppColors.pink.withOpacity(0.5)
                    //color.withOpacity(0.5)
                    ),
              ),
              onChanged: onChanged,
            
            )),
          ),
        ],
      ),
    );
  }
}




