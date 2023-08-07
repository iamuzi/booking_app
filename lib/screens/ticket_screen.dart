import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widget/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20),
              ),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  'Tickets',
                  style: Styles.headlineStyle1
                      .copyWith(fontSize: AppLayout.getHeight(35)),
                ),
                Gap(AppLayout.getHeight(20)),
                const TicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    mytickets: ticketList[0],
                    isColor: true,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Usman Ibrahim',
                                style: Styles.headlineStyle3,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                'Passenger',
                                style: Styles.headlineStyle3,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
