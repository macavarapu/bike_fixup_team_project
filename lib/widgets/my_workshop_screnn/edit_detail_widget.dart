import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:bike_fixup_team_project/widgets/my_workshop_screnn/circleavatar_widget.dart';
import 'package:bike_fixup_team_project/widgets/my_workshop_screnn/workshop_textfield.dart';
import 'package:flutter/material.dart';

class EditDetailwidget extends StatelessWidget {
  const EditDetailwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                child: Column(
                  children: [
                    CircleAvatarwidget(),
            
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
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "/workshopprofiie");
                            },
                            child: Text(
                                  StringConstants.Preview,
                                  style:
                                      TextStyle(fontSize: 15, color: AppColors.pink),
                                ),
                          ),
                          Row(
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
                                StringConstants.EditDetail,
                                style: TextStyle(
                                    fontSize: 15, color: AppColors.backgroundColor),
                              ),
                            ),
                          ),
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                        
                  ],
                ),
            Workshoptextfield(),
            SizedBox(height: 20,),

                 AppButtonWidget(  
                     height: 60,
                  width: double.infinity,
                  title: StringConstants.Save,
                  titleColor: AppColors.witht,
                  buttonBackgroundColor: AppColors.pink,
                  buttonBorderColor: AppColors.pink,
                  onPressed: () {
                    //Navigator.pushNamed(context, "/bottom");
                  }),
                  SizedBox(height: 10,),
                  Center(
                    child: Text(StringConstants.Cancel,style: TextStyles.body1(
                      color: AppColors.pink,
                      
                    ),),
                  ),
                  SizedBox(height: 10,),
                  ],
                ),
              ),
    );
  }
}