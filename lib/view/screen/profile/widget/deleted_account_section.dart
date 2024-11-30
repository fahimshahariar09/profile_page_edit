import 'package:flutter/material.dart';
import 'package:profile/utlis/theme/app_colors.dart';

class DeletedAccountSection extends StatelessWidget {
  const DeletedAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              color: AppColors.bg1LightColor,
            ),
            SizedBox(height: 10),
          ],
        )
      ],
    );
  }
}
