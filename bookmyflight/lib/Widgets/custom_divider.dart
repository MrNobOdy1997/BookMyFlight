import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double dividerWidth;
  const CustomDivider({Key? key, this.isColor, required this.sections,  this.dividerWidth = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print(
            "width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections)
                  .floor(),
                  (index) =>  SizedBox(
                width: dividerWidth,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color:isColor==null? Colors.white:Colors.grey.shade400),
                ),
              )),
        );
      },
    );
  }
}
