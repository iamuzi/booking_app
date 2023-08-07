import 'package:booking_app/widget/ticket_tab.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widget/double_text_widget.dart';
import 'package:booking_app/widget/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are \n you looking for ?',
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getHeight(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketTab(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          //DEPArture
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
              color: const Color(0xd91130ce),
            ),
            child: Center(
              child: Text('Find Tickets',
                  style: Styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 20)),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleText(text: 'Upcoming Flights'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(420),
                width: size.width * .42,
                padding: EdgeInsets.all(AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppLayout.getWidth(20),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.grey.shade200)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AppLayout.getWidth(12),
                          ),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/flight.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss!",
                      style: Styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(210),
                        width: size.width * .44,
                        padding: EdgeInsets.all(AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 104, 167, 167),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xff189999))),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(15),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xffec6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          textAlign: TextAlign.center,
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(
                                fontSize: AppLayout.getWidth(30),
                              ),
                            ),
                            TextSpan(
                              text: '🥰',
                              style:
                                  TextStyle(fontSize: AppLayout.getWidth(45)),
                            ),
                            TextSpan(
                              text: '😘',
                              style:
                                  TextStyle(fontSize: AppLayout.getWidth(30)),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
