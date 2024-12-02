import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/controller/local_storage/local_storage.dart';
import 'package:profile/controller/ui_controller/profile.dart';
import 'package:profile/view/common_widget/custom_text.dart';
import 'package:profile/view/screen/profile/widget/change_password_section.dart';
import 'package:profile/view/screen/profile/widget/custom_switch.dart';
import 'package:profile/view/screen/profile/widget/log_out.dart';
import 'package:profile/view/screen/profile/widget/setting_list_tile.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildSizedBox(height: 5),
              //change password
              SettingListTile(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return const ChangePasswordSection();
                        });
                  },
                  titel: "change_password"),
              //change language
              Card(
                elevation: .4,
                surfaceTintColor: Colors.transparent,
                shape: const OutlineInputBorder(borderSide: BorderSide.none),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: CustomTextWidget(text: "Language change"),
                    ),
                    CustomSwitch(
                      onTap: () {
                        profileController.languageBN.value
                            ? Get.updateLocale(const Locale('en', 'US'))
                            : Get.updateLocale(const Locale('bn', 'BD'));
                        profileController.languageBN.value
                            ? LocalData()
                                .writeData(key: 'languageType', value: 'EN')
                            : LocalData()
                                .writeData(key: 'languageType', value: 'BN');
                        profileController.languageBN.value =
                            !profileController.languageBN.value;
                      },
                      onText: 'EN',
                      offText: 'BN',
                      value: profileController.languageBN,
                    )
                  ],
                ),
              ),
              //logout
              LogOut(onTap: () async {
                buildLogOutDialog();
              })
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> buildLogOutDialog() {
    return Get.defaultDialog(
        title: "Confirmation",
        titleStyle: const TextStyle(fontSize: 20, fontFamily: "RobotoSerif"),
        content: const CustomTextWidget(
          text: "Do you want to log out?",
          fontSize: 16,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const CustomTextWidget(
                    text: 'Cancel',
                    fontColor: Colors.white,
                  ),
                ),
              )
            ],
          )
        ]);
  }

  //sizedbox

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
