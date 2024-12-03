import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class SeletctImageDialogue extends StatelessWidget {
  const SeletctImageDialogue(
      {super.key, required this.galleryButton, required this.cameraButton});

  final VoidCallback galleryButton;
  final VoidCallback cameraButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomTextWidget(
            text: "Select Image from",
            fontSize: 20,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: cameraButton,
                child: const Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: AppColors.bg1LightColor,
                ),
              ),
              InkWell(
                onTap: galleryButton,
                child: const Icon(
                  Icons.photo,
                  size: 30,
                  color: AppColors.bg1LightColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
