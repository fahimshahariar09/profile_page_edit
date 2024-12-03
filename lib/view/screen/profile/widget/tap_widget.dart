import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class TapWidget extends StatelessWidget {
  const TapWidget(
      {super.key,
      required this.onTap,
      this.value,
      required this.selectedIndex,
      required this.titel});

  final int selectedIndex;
  final String titel;
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
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.transparent)),
        child: SizedBox(
          height: 400,
          width: 300,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                value.value == selectedIndex
                    ? const Icon(Icons.check_box_rounded,
                        size: 20, color: AppColors.bg1LightColor)
                    : const SizedBox(),
                SizedBox(width: 5),
                Flexible(child: CustomTextWidget(text: titel))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
