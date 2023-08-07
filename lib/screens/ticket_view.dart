import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> mytickets;
  final bool? isColor;
  const TicketView({super.key, required this.mytickets, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //show the blue part of the ticket
            Container(
              padding: EdgeInsets.all(
                AppLayout.getHeight(16),
              ),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppLayout.getHeight(21),
                  ),
                  topRight: Radius.circular(
                    AppLayout.getHeight(21),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        mytickets['from']['code'],
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const ThickContainer(isColors: true),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (context, BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: AppLayout.getWidth(1),
                                        height: AppLayout.getHeight(1),
                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xff526799),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const ThickContainer(isColors: true),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text(
                        mytickets['to']['code'],
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          mytickets['from']['name'],
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        mytickets['flying_time'],
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4
                                .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          mytickets['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // show the orange part of the ticket with dashes
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //  show the bottom orange color part of the ticket

            Container(
              padding: EdgeInsets.fromLTRB(
                  AppLayout.getHeight(16),
                  AppLayout.getHeight(10),
                  AppLayout.getHeight(16),
                  AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mytickets['date'],
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'DATE',
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          mytickets['departure_time'],
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Departure time',
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          mytickets['number'],
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Number',
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
