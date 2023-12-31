import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketsTabHeader extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketsTabHeader({Key? key, required this.firstTab,required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return     FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft:
                      Radius.circular(AppLayout.getHeight(21))),
                  color: Colors.white),
              child:  Center(child:  Text(firstTab)),
            ),
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight:
                      Radius.circular(AppLayout.getHeight(21))),
                  color: Colors.transparent),
              child:  Center(child:  Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
