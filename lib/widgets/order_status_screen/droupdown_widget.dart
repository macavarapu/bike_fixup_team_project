import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';


class Droupdownscreen extends StatelessWidget {
  
final String title;

   Droupdownscreen({super.key, required this.title,  });

  final List<String> items = [
    'sun',
    'mon',
    'Thu',
    'Wen',
    'Tus',
    'Fri',
    'Sta',
    
  ];

   final List<String> items1 = [
    'sun',
    'mon',
    'Thu',
    'Wen',
    'Tus',
    'Fri',
    'Sta',
    
  ];

   String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return   DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                title,
                //StringConstants.Today,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              // onChanged: (String? value) {
              //   setState(() {
              //     selectedValue = value;
              //   });
              // },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 140,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
            ),
      );
  }
}