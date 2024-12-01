import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:profile/controller/ui_controller/profile.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class ProfileEditSection extends StatelessWidget {
  const ProfileEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: "profile edit",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
