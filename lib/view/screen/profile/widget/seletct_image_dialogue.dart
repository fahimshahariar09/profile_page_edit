import 'package:flutter/material.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class SeletctImageDialogue extends StatelessWidget {
  const SeletctImageDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return  const AlertDialog(
      content: Column(
        children: [
          CustomTextWidget(
            text: "Select Image from",
            fontSize: 20,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
