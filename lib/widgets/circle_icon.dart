import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color circleColor;
  const CircleIcon({super.key, required this.child, required this.borderColor, this.circleColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor,
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Center(
          child: child
      ),
    );
  }
}