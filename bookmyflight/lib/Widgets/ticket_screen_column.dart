import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/AppStyles.dart';
import '../utils/app_layout.dart';

class TicketScreenColumn extends StatelessWidget {
  final CrossAxisAlignment alignmentType;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const TicketScreenColumn({Key? key, required this.firstText, required this.secondText,required this.alignmentType,  this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: alignmentType,

      children: [
        Text(firstText,style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
        ),
      ],
    );
  }
}
