import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2df),
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
