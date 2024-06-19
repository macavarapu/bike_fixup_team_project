import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../components/button_components.dart';
import '../../constants/image_constants.dart';

class OTPVerificationscreen extends StatefulWidget {
  const OTPVerificationscreen({super.key});

  @override
  State<OTPVerificationscreen> createState() => _OTPVerificationscreenState();
}

class _OTPVerificationscreenState extends State<OTPVerificationscreen> {
  String? otpcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Center(
            child: Column(children: [
              Image.asset(ImageConstants.logo),
              SizedBox(
                height: 20,
              ),
              Text(
                StringConstants.otp,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
              Text(
                StringConstants.pleaseenterthecodesendto,
                style: TextStyle(
                    fontSize: 22,
                    //fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                //controller: ,
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
                length: 5,
                obscureText: true,
              //  obscuringCharacter: '',
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 70,
                  fieldWidth: 70,
                  disabledColor: AppColors.with400,
                ),
                keyboardType: TextInputType.number,
      
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    otpcode=value;
                  });
                },
              ),
      
              // Pinput(
              //   length: 5,
              //   showCursor: true,
              //   defaultPinTheme: PinTheme(
              //     width: 70,
              //     height: 70,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(
              //         color: AppColors.pink
              //       )
              //     ),
              //     textStyle: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.w600,
              //     )
      
              //   ),
              //   onSubmitted:(value){
              //     setState(() {
              //       otpcode=value;
              //     });
              //   } ,
              // ),
              SizedBox(
                height: 20,
              ),
      
              AppButtonWidget(  
                     height: 60,
                  width: double.infinity,
                  title: StringConstants.submit,
                  titleColor: AppColors.witht,
                  buttonBackgroundColor: AppColors.pink,
                  buttonBorderColor: AppColors.pink,
                  onPressed: () {
                    Navigator.pushNamed(context, "/bottom");
                  }),
              SizedBox(
                height: 10,
              ),
      
              RichText(
                text: TextSpan(
                    text: StringConstants.resendauthorizationcodein1sec,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                      TextSpan(
                        text: StringConstants.sec,
                        style: TextStyle(color: AppColors.pink, fontSize: 20),
                      )
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
