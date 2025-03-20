import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.radius = 400,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = Colors.white,
    required this.margin,
  });
  final double radius;
  final double width;
  final double height;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        // shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
