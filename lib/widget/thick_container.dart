import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColors;
  const ThickContainer({super.key, this.isColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: isColors == null ? Colors.white : const Color(0xff8accf7)),
      ),
    );
  }
}
