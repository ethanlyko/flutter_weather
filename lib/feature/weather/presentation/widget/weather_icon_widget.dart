import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeatherIconWidget extends StatelessWidget {
  final String iconUrl;
  final double size;
  const WeatherIconWidget({required this.iconUrl, this.size = 120, super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: iconUrl,
      width: size,
      height: size,
    );
  }
}
