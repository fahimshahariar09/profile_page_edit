import 'package:flutter/material.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class SeletctImageDialogue extends StatelessWidget {
  const SeletctImageDialogue({super.key, required this.galleryButton, required this.cameraButton});


  final VoidCallback galleryButton;
  final VoidCallback cameraButton;

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextWidget(
            text: "Select Image from",
            fontSize: 20,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: cameraButton,
                child: Icon(Icons.camera_alt),
              )
            ],
          )
        ],
      ),
    );
  }
}
