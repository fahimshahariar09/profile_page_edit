import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class CustomRefreshButton extends StatelessWidget {
  const CustomRefreshButton(
      {super.key,
      required this.refreshButton,
      this.height,
      this.width,
      this.containerColor,
      this.iconColor});

  final VoidCallback refreshButton;
  final double? height;
  final double? width;
  final Color? containerColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? MediaQuery.sizeOf(context).width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: containerColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: refreshButton,
        child: Icon(
          Icons.refresh,
          size: 50,
          color: iconColor ?? AppColors.bg1LightColor,
        ),
      ),
    );
  }
}
