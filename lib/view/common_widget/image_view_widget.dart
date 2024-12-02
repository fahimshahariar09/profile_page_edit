import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewWidget extends StatelessWidget {
  const ImageViewWidget({super.key, required this.imageurl});

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Center(
            child: Hero(
              tag: "das",
              child: PhotoView(
                imageProvider: NetworkImage(imageurl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
