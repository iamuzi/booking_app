import 'package:booking_app/utils/app_layout.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelScreen({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    //Container for hotel
    return Container(
      width: size.width * 0.6,
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(AppLayout.getHeight(10)),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: AppLayout.getHeight(20),
              spreadRadius: AppLayout.getHeight(5),
            )
          ]),
      height: AppLayout.getHeight(350),
      //image container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppLayout.getHeight(12)),
              ),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotels['image']}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotels['place'],
                  style:
                      Styles.headlineStyle2.copyWith(color: Styles.kokiColor),
                ),
                Text(
                  hotels['destination'],
                  style: Styles.headlineStyle3.copyWith(color: Colors.white),
                ),
                const Gap(8),
                Text(
                  '${hotels['price']}/night',
                  style:
                      Styles.headlineStyle1.copyWith(color: Styles.kokiColor),
                ),
                RatingBarIndicator(
                    rating: hotels['rating'],
                    itemSize: AppLayout.getHeight(25),
                    itemBuilder: (context, _) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
