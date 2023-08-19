import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/AppStyles.dart';

class ViewnAllheadlineRow extends StatelessWidget {
  final String title;
  const ViewnAllheadlineRow({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle2,
        ),
        const Gap(5),
        InkWell(
          onTap: () {
            print("clicked on me");
          },
          child: Text(
            "View all ",
            style: Styles.textStyle
                .copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }

}
