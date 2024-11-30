import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.bg1LightColor,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide.none),
    );
  }
}
