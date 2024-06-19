

import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/profile_screen/phonenumber_widget.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _useremailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
     
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
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
          StringConstants.Profile,
          style: TextStyle(color: AppColors.black),
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.Name,
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
              Textinputfield(
                  controller: _usernameController,
                  hintText: StringConstants.JohnWilliam,
                  onChanged: (value) {}),
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
                  controller: _useremailController,
                  hintText: StringConstants.hotpro,
                  onChanged: (value) {}),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.with500,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        StringConstants.Workshop,
                        style: TextStyle(fontSize: 18, color: AppColors.black),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,size: 30,color: AppColors.black,),
                    ),
                   
                     ListTile(
                      leading: Text(
                        StringConstants.Mechanic,
                        style: TextStyle(fontSize: 18, color: AppColors.black),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,size: 30,color: AppColors.black,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
