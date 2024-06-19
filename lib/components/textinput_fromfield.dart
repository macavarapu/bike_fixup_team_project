import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors_constants.dart';

class Textinputfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double? width;
  final TextStyle? hintstyle;
  final Widget? prefixIcon;
  final bool? obsecureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
 // final Function(String value)? onChange;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final Color? fillcolor;
  final bool? isfilled;
  final int? maxLines;
  final int? maxLength;
  final String? label;
  final OutlineInputBorder? border;

  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final double? borderRadius;
  final TextStyle? labelstyle;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final Function(String?)? onSubmitted;
  final Color? titleColor;
  final Color? borderColor;
  final FocusNode? focusNode;
Textinputfield({
    Key? key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.validator,
    // required Color color,
    this.width,
    this.hintstyle,
    this.prefixIcon,
    this.obsecureText,
    this.suffixIcon,
   // required this.onChange,
    this.contentPadding,
    this.textAlign,
    this.fillcolor,
    this.isfilled,
    this.maxLines,
    this.maxLength,
    this.label,
    this.border,
    this.inputFormatters,
    this.borderRadius,
    this.labelstyle,
    this.onTap,
    this.textInputAction,
    this.onSubmitted,
    this.titleColor,
    this.borderColor,
    this.focusNode, required Null Function(dynamic valu) onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: Column(
        children: [
          TextFormField(
            obscureText: false,
            controller: controller,
            decoration: InputDecoration(
              fillColor: AppColors.witht,
              filled: true,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              // fillColor: AppColors.background,
              hintText: hintText,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
             
            ),
            keyboardType: keyboardType,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
