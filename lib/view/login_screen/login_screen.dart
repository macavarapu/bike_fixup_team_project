import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:bike_fixup_team_project/widgets/login_screen/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/string_constants.dart';
import '../../data/local_storage.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _phoneNumberController = TextEditingController();
   final _formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Column(
                children: [
                  Image.asset(ImageConstants.logo),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Textwidget(text: StringConstants.login,),
                        Textinputfield(
                          controller: _phoneNumberController,
                          hintText: StringConstants.phonenumber,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: AppColors.black,
                          ), 
                          onChanged: (valu) {  }, 
                           validator: (value) {
                            if (value!.length != 10) {
                              return 'Mobile Number must be of 10 digit';
                              // return 'Please enter a valid phone number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,

                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListTile(
                          leading:  Icon(Icons.check_box_outlined,color: AppColors.pink,),
                          title: Text(StringConstants.logging,style: TextStyle(fontSize: 12,fontWeight:FontWeight.bold,color: AppColors.black),),
                          subtitle: Text( StringConstants.PrivacyPolicy,style: TextStyle(color: AppColors.pink),),
                         dense: true,
                        ),
                       
                        SizedBox(
                          height: 20,
                        ),
                        AppButtonWidget(
                          height: 60,
                            width: double.infinity,
                            title: StringConstants.login,
                            titleColor: AppColors.witht,
                            buttonBackgroundColor: AppColors.pink,
                            buttonBorderColor: AppColors.pink,
                            onPressed: () async{
                                if (_formKey.currentState!.validate()) {
                                await LocalStorage.setephonenumber(
                                      _phoneNumberController.text);
                                        final phonenumber =await LocalStorage.getphonenumber();
                                          print(phonenumber);
                                 Navigator.pushNamed(context, "/bottom");
                                 // Navigator.pushNamed(context, "/otp");
                                }
                            
                            }),
                             SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(StringConstants.donthaveaccount,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                         TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/register");
                      },
                       child: Text(StringConstants.createaccount,
                       style:TextStyles .body1(
                        fontSize: 18,
                        fontWeight:  FontWeight.bold,
                        color: AppColors.blueprime
                       )
                     
                      ),
                       ),
                      ],
                    ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> storeUserInfoLocally(Map<String, dynamic> userInfo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_id', userInfo['user_id']);
    // Add more user information to store if needed
  }
}
