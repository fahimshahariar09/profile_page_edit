import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class TapWidget extends StatelessWidget {
  const TapWidget({super.key, required this.onTap});


  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColors.bg1LightColor,
      ),
    );
  }
}
