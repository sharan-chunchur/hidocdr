

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCirclePainter extends CustomPainter {

  final Color color;
  final double xCoord;
  final double yCoord;

  CustomCirclePainter({required this.color, required this.xCoord, required this.yCoord});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width*xCoord, size.height*yCoord), 175.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CustomCircleWidget extends StatelessWidget {
  final Color color;
  final double xCoord;
  final double yCoord;

  const CustomCircleWidget({super.key, required this.color, required this.xCoord, required this.yCoord});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomCirclePainter(color: color, xCoord: xCoord, yCoord: yCoord),
      child: const SizedBox(
        width: 200.0,
        height: 200.0,
      ),
    );
  }
}
