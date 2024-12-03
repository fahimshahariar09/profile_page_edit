import 'package:flutter/cupertino.dart';

class TapWidget extends StatelessWidget {
  const TapWidget({super.key, required this.onTap});


  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    );
  }
}
