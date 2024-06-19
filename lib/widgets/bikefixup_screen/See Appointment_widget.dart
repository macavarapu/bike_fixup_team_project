import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeeAppointment extends StatefulWidget {
  const SeeAppointment({super.key});

  @override
  State<SeeAppointment> createState() => _SeeAppointmentState();
}

class _SeeAppointmentState extends State<SeeAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 40,color: AppColors.black,)),
        centerTitle: true,
        title: Text(StringConstants.SeeAppointment),
      ),
      body: Column(
        children: [
          Center(child: Image.asset(ImageConstants.Map)),
          Text(StringConstants.Loremipsumdollarsitmet,
          style: TextStyles.subtitle(),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                   border: Border.all(width: 1, color: AppColors.red),
                  //color: AppColors.red,
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone_callback,size: 20,color: AppColors.red,),
                    Text(StringConstants.Call,
                      style: TextStyles.body4(
                        color: AppColors.red,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                   border: Border.all(width: 1, color: AppColors.blueprime),
                  //color: AppColors.blueprime,
                ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.message,size: 20,color: AppColors.blueprime,),
                    Text(StringConstants.SMS,
                      style: TextStyles.body4(
                        color: AppColors.blueprime,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                   border: Border.all(width: 1, color: AppColors.green),
                 // color: AppColors.green,
                ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(ImageConstants.Whatsap),
                    Text(StringConstants.Whatsap,
                      style: TextStyles.body4(
                        color: AppColors.green,
                      ),
                    )
                  ],
                ),
              )
            ],
           ),
         ),
        ],
      ),
    );
  }
}