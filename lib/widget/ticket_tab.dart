import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //AIRLINE TCIKETS
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            //HOTELS
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
