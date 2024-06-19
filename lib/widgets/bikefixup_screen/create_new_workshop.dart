import 'dart:async';

import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/constntsdata.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:bike_fixup_team_project/widgets/bikefixup_screen/droup_downconst.dart';
import 'package:bike_fixup_team_project/widgets/profile_screen/phonenumber_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CreateNewWorkshopscreen extends StatelessWidget {
  CreateNewWorkshopscreen({super.key});
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: AppColors.black,
            )),
        title: Text(
          StringConstants.CreateWorkshop,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.WorkshopType,
                style: TextStyles.subtitle(
                 fontSize: 15,
                ),
             
              ),
              Textinputfield(
                  // controller: _usernameController,
                  hintText: StringConstants.LoremIpsumr12,
                  onChanged: (value) {}),
              Text(
                StringConstants.WorkshopName,
                style: TextStyles.subtitle(
                  fontSize: 15,
                ),
           
              ),
                DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                // Add Horizontal padding using menuItemStyleData.padding so it matches
                // the menu padding when button's width is not specified.
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                // Add more decoration..
              ),
              // hint: const Text(
              //   'Select Your Gender',
              //   style: TextStyle(fontSize: 14),
              // ),
              items:ConstantData.wheeler
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              // validator: (value) {
              //   if (value == null) {
              //     return 'Please selec.';
              //   }
              //   return null;
              // },
              onChanged: (value) {
                //Do something when selected item is changed.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
      
              // CustomDropDown(
              //   items: ConstantData.wheeler
              //       .map((e) => DropdownMenuItem<String>(
              //             child: Text(
              //               e,
              //               style: TextStyles.body2(),
              //             ),
              //             value: e,
              //           ))
              //       .toList(),
              //   onChanged: (Value) {},
              //    onSaved: (value) {
              //   selectedValue = value.toString();
              // },
              //   hintText: '',
              // ),

              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    StringConstants.phonenumbertext,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Phonenumberwidget(),

              SizedBox(
                height: 8,
              ),
              Text(
                StringConstants.email,
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
              Textinputfield(
                  // controller: _useremailController,
                  hintText: StringConstants.hotpro,
                  onChanged: (value) {}),
           
            
            ],
          ),
        ),
      ),
    );
  }
}
