import 'package:flutter/cupertino.dart';
import 'package:food_dev_sys/utils/dimension.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color backgroundcolor;
  final Color iconcolor;
  AppIcon({
    Key? key,
    required this.icon,
    this.size = 40,
    this.backgroundcolor = const Color(0xD7D7D2FF),
    this.iconcolor = const Color(0x6A070606),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundcolor,
      ),
      child: Icon(
        icon,
        color: iconcolor,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
