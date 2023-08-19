import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookmyflight/Screens/ticket_view.dart';
import 'package:bookmyflight/Widgets/custom_divider.dart';
import 'package:bookmyflight/Widgets/tickets_tab_header.dart';
import 'package:bookmyflight/utils/AppStyles.dart';
import 'package:bookmyflight/utils/app_info_list.dart';
import 'package:bookmyflight/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Widgets/ticket_screen_column.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(55)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1.copyWith(
                  fontSize: AppLayout.getWidth(45),
                ),
              ),
              Gap(AppLayout.getHeight(25)),
              const TicketsTabHeader(
                  firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TicketScreenColumn(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignmentType: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        TicketScreenColumn(
                          firstText: '45632 578991',
                          secondText: 'Passport',
                          alignmentType: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    const Gap(20),
                    const CustomDivider(
                      sections: 15,
                      isColor: false,
                      dividerWidth: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TicketScreenColumn(
                          firstText: '789459 78954',
                          secondText: 'Number of E tickets',
                          alignmentType: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        TicketScreenColumn(
                          firstText: 'B2sG28',
                          secondText: 'Booking Code',
                          alignmentType: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    const Gap(20),
                    const CustomDivider(
                      sections: 15,
                      isColor: false,
                      dividerWidth: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  "  **** 2467",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const TicketScreenColumn(
                          firstText: '\$245.00',
                          secondText: 'Price',
                          alignmentType: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    const Gap(20),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              /*    barcode section    */

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          data: "hhtps://gethub.com/martinovovo",
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: AppLayout.getHeight(70),
                        ))),
              ),
              const Gap(20),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(25),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
