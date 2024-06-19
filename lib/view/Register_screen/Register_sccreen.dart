import 'package:bike_fixup_team_project/components/button_components.dart';
import 'package:bike_fixup_team_project/components/textinput_fromfield.dart';
import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../../data/local_storage.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _useremailController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isSigningUp = false;
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            StringConstants.register,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black),
                          ),
                        ),
                        Textinputfield(
                          controller: _usernameController,
                          hintText: StringConstants.yourname,
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColors.pink,
                          ),
                          onChanged: (valu) {},
                            validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              //allow upper and lower case alphabets and space
                              return "Enter Correct Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Textinputfield(
                          controller: _phoneNumberController,
                          hintText: StringConstants.phonenumber,
                          
                          prefixIcon: Icon(
                            Icons.phone,
                            color: AppColors.pink,
                          ),
                          onChanged: (valu) {},
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
                          height: 10,
                        ),
                        Textinputfield(
                          controller: _useremailController,
                          hintText: StringConstants.email,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.pink,
                          ),
                          onChanged: (valu) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter user email";
                            } else {
                              final bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              return emailValid
                                  ? null
                                  : "please enter valid email";
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Textinputfield(
                          controller: _stateController,
                          hintText: StringConstants.State,
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: AppColors.pink,
                          ),
                          onChanged: (valu) {},
                          validator: (value) {
                            if (value == null) {
                              return 'Please select state.';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Textinputfield(
                          controller: _cityController,
                          hintText: StringConstants.city,
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: AppColors.pink,
                          ),
                          onChanged: (valu) {},
                          validator: (value) {
                            if (value == null) {
                              return 'Please select city.';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.check_box_outlined,
                            color: AppColors.pink,
                          ),
                          title: Text(
                            StringConstants.iagreetothepartneragreement,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black),
                          ),
                          subtitle: Text(
                            StringConstants.PrivacyPolicyandTermsofService,
                            style: TextStyle(color: AppColors.pink),
                          ),
                          dense: true,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppButtonWidget(
                            height: 60,
                            width: double.infinity,
                            title: StringConstants.register,
                            titleColor: AppColors.witht,
                            buttonBackgroundColor: AppColors.pink,
                            buttonBorderColor: AppColors.pink,
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await LocalStorage.seteusername(
                                    _usernameController.text);
                                await LocalStorage.setephonenumber(
                                    _phoneNumberController.text);
                                await LocalStorage.setemail(
                                    _useremailController.text);
                                await LocalStorage.setestate(
                                    _stateController.text);
                                await LocalStorage.setecity(
                                    _cityController.text);

                                final username =await LocalStorage.getusename();

                                final phonenumber =await LocalStorage.getphonenumber();
                                final email = await LocalStorage.getemil();
                                final State = await LocalStorage.getstate();
                                final city = await LocalStorage.getcity();
                                print(username);
                                print(phonenumber);
                                print(email);
                                print(State);
                                print(city);
                                   Navigator.pushNamed(context, "/bottom");
                              }
                           
                            }),
                         SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstants.alreadyacount,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      StringConstants.login,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blueprime),
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
}
