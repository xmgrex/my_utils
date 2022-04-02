import 'package:XLR8_utils/xlr8_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class ImageFromUrl extends StatelessWidget {
  const ImageFromUrl({
    required this.imageUrl,
    this.radius,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double? radius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 6),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (context, url) => Container(),
        errorWidget: (context, url, dynamic error) {
          return Container(
            height: height ?? 60,
            width: width ?? 60,
            color: SystemColors.grey400,
            child: const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
