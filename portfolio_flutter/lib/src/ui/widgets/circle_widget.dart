import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double width;
  final double height;
  final double outerRadius;
  final double innerRadius;
  final Color circleColor;
  final Widget? child;

  const CircleWidget({
    super.key,
    required this.width,
    required this.height,
    required this.outerRadius,
    required this.innerRadius,
    required this.circleColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: circleColor,
        border: child != null ? Border.all(color: Colors.yellow) : null,
        borderRadius: BorderRadius.circular(outerRadius),
      ),
      child: child ??
          Center(
            child: Container(
              height: innerRadius == 0 ? 0 : height * 0.45,
              width: innerRadius == 0 ? 0 : width * 0.45,
              decoration: BoxDecoration(
                color: const Color(0xff011627),
                borderRadius: BorderRadius.circular(innerRadius),
              ),
            ),
          ),
    );
  }
}
