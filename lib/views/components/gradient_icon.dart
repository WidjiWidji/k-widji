import 'package:flutter/material.dart';
import 'package:widjiwidji/assets/colors/colors.dart';

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
    this.onPress,
  );

  final IconData icon;
  final double size;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [topGradientColor, bottomGradientColor],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: IconButton(
        icon: Icon(icon),
        iconSize: size,
        color: Colors.white,
        onPressed: onPress,
      ),
    );
  }
}
