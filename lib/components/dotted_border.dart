import 'package:flutter/material.dart';

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 4, dashSpace = 4;
    double startX = 0;
    final space = (dashSpace + dashWidth);
    while (startX < size.width - 70) {
      canvas.drawLine(Offset(startX, size.height),
          Offset(startX + dashWidth, size.height), paint);
      startX += space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
