import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      color: AppColors.bg1LightColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: SizedBox(
        height: 35,
        width: MediaQuery.sizeOf(context).width,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.white,
          color: AppColors.bg1LightColor,
        ),
      ),),
    );
  }
}
