import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info_list.dart';

import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widget/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                //GREETING WITH BOOK TICKETS AND IMAGE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headlineStyle1,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/logo.jpg'),
                            fit: BoxFit.fitHeight),
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                //SEARCH
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff4f6fd),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0XFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                //UPCOMING FLIGHT
                const DoubleText(text: 'Upcoming flights')
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    ticketList.map((e) => TicketView(mytickets: e)).toList()),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              child: const DoubleText(text: 'Hotels')),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
                children:
                    hotelList.map((e) => HotelScreen(hotels: e)).toList()),
          )
        ],
      ),
    );
  }
}
