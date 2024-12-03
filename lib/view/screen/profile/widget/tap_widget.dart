import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class TapWidget extends StatelessWidget {
  const TapWidget(
      {super.key,
      required this.onTap,
      this.value,
      required this.selectedIndex});

  final int selectedIndex;
  final VoidCallback onTap;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: value.value == selectedIndex
            ? AppColors.bgLightColor
            : AppColors.bg1LightColor,
        margin: EdgeInsets.zero,
        child: SizedBox(
          height: 400,
          width: 300,
          child: Center(
            child: Row(
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}
