import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profile/controller/ui_controller/profile.dart';
import 'package:profile/utlis/common_funcation/common_snackbar_message.dart';
import 'package:profile/utlis/common_funcation/internet_connection_checkout.dart';
import 'package:profile/view/common_widget/custom_button.dart';
import 'package:profile/view/common_widget/custom_text.dart';
import 'package:profile/view/screen/profile/widget/custom_text_field.dart';

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
                InkWell(
                  onTap: () {
                    profileController.getImage(
                        imageSource: ImageSource.gallery);
                  },
                  child: Column(
                    children: [
                      Obx(() => CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey,
                            backgroundImage: profileController
                                        .profileIMG.value ==
                                    null
                                ? NetworkImage(
                                    "${profileController.userInfo["profile_image"] ?? ""}")
                                : FileImage(File(profileController
                                    .profileIMG.value!.path)) as ImageProvider,
                          )),
                      CustomTextWidget(
                        text: "Tap to change image",
                        fontSize: 11,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CustomTextField(
                  controller: profileController.nameController,
                  labelText: "name",
                ),
                CustomTextField(
                  controller: profileController.addressController,
                  labelText: "address",
                ),
                SizedBox(height: 10),
                CustomButton(
                    text: "edit",
                    buttonWidth: 150,
                    onTap: () async{
                      FocusScope.of(context).unfocus();
                      if(!await ConnectionChecker.checkConnection()){
                        CommonSnackBarMessage.noInternetConnection();
                      }
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
