import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Set list of image icons from the asset/images/icon
enum ImageIcons {
  camera,
  appIcon,
}

class ImgIcon extends StatelessWidget {
  final ImageIcons icon;
  final double size;
  final Color? color;

  const ImgIcon(
    this.icon, {
    Key? key,
    required this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext c) {
    final String _ic = describeEnum(icon).toLowerCase().replaceAll('_', '-');
    final String _path = 'assets/images/icon/$_ic.png';

    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Image.asset(
          _path,
          width: size,
          height: size,
          color: color,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
