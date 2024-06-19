import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';

showAlertDialog1(BuildContext context, ) {
    int? _selectedValue = 1;
  
    // Default value
    showDialog(
      context: context,
      builder:  (_) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          
              Text(StringConstants.SetUpWorkshop),
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 icon: Icon(Icons.close,size: 40,color: AppColors.black,),
                 ),
            ],
          ),
          content: Container(
              width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         
        ),
            child: Column(
              children: <Widget>[
               
               Text(StringConstants.PleaseConfirmwhetheryouwanttocreate),
               Text(StringConstants.newworkshoporjoinworkshop),
               
                RadioListTile(
                  title: Text(StringConstants.CreateNewWorkshop),
                  value: 1,
                   groupValue: _selectedValue,
                    onChanged: (value){}
                    ),
                     RadioListTile(
                  title: Text(StringConstants.JoinaWorkshop),
                  value: 1,
                   groupValue: _selectedValue,
                    onChanged: (value){
                    }
                    ),
                     
              ],
            ),
          ),
          actions: <Widget>[
               AppButtonWidget(  
                     height: 60,
                  width: MediaQuery.of(context).size.width,
                  title: StringConstants.Continue,
                  titleColor: AppColors.witht,
                  buttonBackgroundColor: AppColors.pink,
                  buttonBorderColor: AppColors.pink,
                  onPressed: () {
                     VerifyAlertDialog1(context);
                      //showAlertDialog(context);
                    //Navigator.pushNamed(context, "/bottom");
                  }),
           
          ],
        );
      },
    );
  }
  VerifyAlertDialog1(BuildContext context,){
        int? _selectedValue = 1;
  
    // Default value

    showDialog(
      context: context,
      builder:  (_) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          
              Text(StringConstants.SetUpWorkshop),
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 icon: Icon(Icons.close,size: 40,color: AppColors.black,),
                 ),
            ],
          ),
          content: Container(
          
              width: double.infinity,
            height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         
        ),
            child: Column(
              children: <Widget>[
               
               Text(StringConstants.PleaseConfirmwhetheryouwanttocreate),
               Text(StringConstants.newworkshoporjoinworkshop),
               
                RadioListTile(
                  title: Text(StringConstants.CreateNewWorkshop),
                  value: 1,
                   groupValue: _selectedValue,
                   
                    onChanged: (value){}
                    ),
                     RadioListTile(
                  title: Text(StringConstants.JoinaWorkshop),
                  value: 1,
                   groupValue: _selectedValue,
                    onChanged: (value){
                    }
                    ),
                    //SizedBox(height: 5,),
                      TextFormField(
                      decoration: InputDecoration(
                        hintText: StringConstants.EnterInviteCodeToJoinWorkshop
                      ),
                    ),
                    
                     
              ],
            ),
          ),
          
          actions: <Widget>[
               AppButtonWidget(  
                     height: 60,
                  width:double.infinity,
                  title: StringConstants.VerifyCode,
                  titleColor: AppColors.witht,
                  buttonBackgroundColor: AppColors.pink,
                  buttonBorderColor: AppColors.pink,
                  onPressed: () {
                      //showAlertDialog(context);
                    Navigator.pushNamed(context, "/createnewworkshop");
                
                  }),
           
          ],
        );
      },
    );

  }














/*
Future<void> logoutWidget(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            StringConstants.areYourSureYouWantToLogout.t(context),
            style: TextStyles.body1(),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () async {
                      await LocalStorageClass.setAuthenticate(false);
                      final userId = await LocalStorageClass.getUserId();
                      FirebaseMessaging.instance
                          .unsubscribeFromTopic(userId ?? '');
                      Navigator.pushNamedAndRemoveUntil(
                          context, RouteList.loginScreen, (route) => false);
                    },
                    child: Text(
                      StringConstants.oK.t(context),
                      style: TextStyles.body2(color: AppColors.blue),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringConstants.cancel.t(context),
                      style: TextStyles.body2(color: AppColors.blue),
                    ))
              ],
            )
          ],
        );
      });
}
*/