import 'package:flutter/material.dart';

class CustomRefreshButton extends StatelessWidget {
  const CustomRefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: refreshButton,
        child: Icon(Icons.refresh),

      ),
    );
  }
}
