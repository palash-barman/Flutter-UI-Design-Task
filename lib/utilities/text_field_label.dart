import 'package:flutter/material.dart';

import 'package:flutter_ui_design_task/utilities/colors.dart';
import 'package:flutter_ui_design_task/utilities/text_style.dart';

class LabelText extends StatelessWidget {
   LabelText({super.key,required this.text,this.color});
String text;
Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,style:CustomTextStyle.h4(fontWeight: FontWeight.w600,color: color??AppColors.subHeaderTextColor),

    );
  }
}