import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';

class Workshoptextfield extends StatelessWidget {
  const Workshoptextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.WorkshopName,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.SteelVintageBikes,
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.WorkshopType,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.TwoWheeler,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                size: 40,
                color: AppColors.black,
              ),
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.WorkshopAddress,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.LoremIpsum123streetNewYork,
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.OwnerName,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.JohnWilliam,
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.DoorstepService,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.OfferService,
              suffixIcon: Icon(
                Icons.toggle_on_outlined,
                size: 40,
                color: AppColors.pink,
              ),
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.AreaCoveredinKM,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.black,
                fontWeight: FontWeight.w600),
          ),
          Textinputfield(
              // controller: _usernameController,
              hintText: StringConstants.km,
              onChanged: (value) {}),
        ],
      ),
    );
  }
}
