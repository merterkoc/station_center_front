import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {Key? key,
      required this.imageUrl,
      this.height = 300,
      this.width = 200,
      this.errorImage = 'asset/image/error_image.png'})
      : super(key: key);
  final String imageUrl;
  final double height;
  final double width;
  final String errorImage;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Image.asset(
          errorImage,
          fit: BoxFit.cover,
        );
      },
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.grey[300],
              width: 300,
              height: 200,
            ),
          ),
        );
      },
      fit: BoxFit.cover,
    );
  }
}
