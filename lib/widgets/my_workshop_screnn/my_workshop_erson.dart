import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfilescreen extends StatefulWidget {
  const MyProfilescreen({super.key});

  @override
  State<MyProfilescreen> createState() => _MyProfilescreenState();
}

class _MyProfilescreenState extends State<MyProfilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: AppColors.black,
              ))),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.pink,
                radius: 100,
                   backgroundImage:AssetImage( ImageConstants.bike1,) ,
             
              ),
              SizedBox(height: 10,),
              Text(
                StringConstants.SteelVintageBikes,
                style: TextStyles.body1(
                  fontSize: 25,
                ),
               
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.with500,
                    ),
        
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.pink,
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Text(
                              StringConstants.Preview,
                              style: TextStyle(
                                  fontSize: 15, color: AppColors.backgroundColor),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.pushNamed(context, "/editdetail");
                              },
                              child: Text(
                                StringConstants.EditDetail,
                                style:
                                    TextStyle(fontSize: 15, color: AppColors.pink),
                              ),
                            )
                          ],
                        ),
                       
                      ],
                    ),
                  ),
        
                ],
              ),
              Padding(
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
                            SizedBox(height: 10,),
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
                      suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: AppColors.black,),
                      onChanged: (value) {}),

                      SizedBox(height: 10,),
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
                      SizedBox(height: 10,),
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
                      SizedBox(height: 10,),
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
                      suffixIcon: Icon(Icons.toggle_on_outlined,size: 40,color: AppColors.pink,),
                      onChanged: (value) {}),
                      SizedBox(height: 10,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
