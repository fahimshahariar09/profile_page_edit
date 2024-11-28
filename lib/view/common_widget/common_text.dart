import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.titel, this.fColor});

  final String titel;
  final Color? fColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          overflow: TextOverflow.ellipsis),
      maxLines: 1,
    );
  }
}
