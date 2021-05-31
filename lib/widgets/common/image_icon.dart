import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Set list of image icons from the asset/images/icon
enum ImageIcons {
  camera,
  app_icon,
}

class ImgIcon extends StatelessWidget {
  final ImageIcons icon;
  final double size;
  final Color? color;

  const ImgIcon(this.icon, {Key? key, required this.size, this.color})
      : super(key: key);

  Widget build(BuildContext c) {
    String _ic = describeEnum(icon).toLowerCase().replaceAll("_", "-");
    String _path = 'assets/images/icon/$_ic.png';

    return Container(
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
