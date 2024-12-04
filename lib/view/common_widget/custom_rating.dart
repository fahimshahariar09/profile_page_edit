import 'package:flutter/material.dart';
import 'package:profile/view/common_widget/custom_text.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.ratingStar});

  final int ratingStar;

  @override
  Widget build(BuildContext context) {
    int ratingCount = 0;
    if (ratingStar > 5) {
      ratingCount = 0;
    } else {
      ratingCount = ratingStar;
    }
    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
            width: ratingCount * 11,
            height: 20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ratingCount,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star,
                    size: 11,
                    color: Colors.orange,
                  );
                }),
          ),
          SizedBox(
            width: (5 - ratingCount * 12),
            height: 20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ratingCount,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star_border,
                    size: 11,
                    color: Colors.orange,
                  );
                }),
          ),
          CustomTextWidget(text: "${ratingCount/5}",fontSize: 12,)
        ],
      ),
    );
  }
}
