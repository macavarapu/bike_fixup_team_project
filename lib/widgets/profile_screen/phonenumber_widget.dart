import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../components/textinput_fromfield.dart';
import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Phonenumberwidget extends StatefulWidget {
  const Phonenumberwidget({super.key});

  @override
  State<Phonenumberwidget> createState() => _PhonenumberwidgetState();
}

class _PhonenumberwidgetState extends State<Phonenumberwidget> {
  
  TextEditingController _phoneNumberController = TextEditingController();
  
  Country Slectedcountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );
  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  width: 100,
                  // color: AppColors.with400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.with500,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                countryListTheme: CountryListThemeData(
                                  bottomSheetHeight: 500,
                                ),
                                onSelect: (valu) {
                                  setState(() {
                                    Slectedcountry = valu;
                                  });
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "+${Slectedcountry.phoneCode}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 28,
                                color: AppColors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                    height: 100,
                   width: 260,
                    child: Textinputfield(
                        controller: _phoneNumberController,
                        hintText: StringConstants.PhoneNo,
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 40,
                          color: AppColors.pink,
                        ),
                        onChanged: (value) {}))
              ],
            );
  }
}