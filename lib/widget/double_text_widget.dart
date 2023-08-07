import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String text;
  const DoubleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            //TODO VIEW ALL
          },
          child: Text(
            'view all',
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
