import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class PhotoView extends StatelessWidget {
  final String image;
  final bool isNetworkImg;
  const PhotoView({super.key, required this.image, this.isNetworkImg = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(SizeConfig.defaultSpace),
        child: Center(
          child: isNetworkImg
              ? CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.medium,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      const ShimmerEffect(width: 55, height: 55, radius: 55),
                  errorWidget: (context, url, error) => const Icon(Icons.error))
              : Image(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
        ),
      ),
    );
  }
}