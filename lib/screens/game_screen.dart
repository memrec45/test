import 'package:flutter/material.dart';
import 'package:hang_man/extensions/context_extension.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: DrawStickMan(),
            size: context.mediaQuery.size,
          )
        ],
      ),
    );
  }
}

class DrawStickMan extends CustomPainter {
  final Paint _paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 4;

  void drawHead(Canvas canvas, Size size) {
    double headSize = 30;
    double eyeSize = 3;

    Offset headDistance = Offset(size.width * 0.5, size.height * 0.2);
    Offset leftEyeDistance = Offset(size.width * 0.47, size.height * 0.195);
    Offset rigthEyeDistance = Offset(size.width * 0.53, size.height * 0.195);

    /// head
    canvas.drawCircle(
        headDistance, headSize, _paint..style = PaintingStyle.stroke);

    /// left eye
    canvas.drawCircle(
        leftEyeDistance, eyeSize, _paint..style = PaintingStyle.stroke);

    /// right eye
    canvas.drawCircle(
        rigthEyeDistance, eyeSize, _paint..style = PaintingStyle.stroke);

    /// Mouth
    canvas.drawLine(
      Offset(size.width * 0.47, size.height * 0.22),
      Offset(size.width * 0.53, size.height * 0.22),
      _paint,
    );
  }

  void drawBody(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.235),
      Offset(size.width * 0.5, size.height * 0.43),
      _paint..strokeWidth = 5,
    );
  }

  void drawArms(Canvas canvas, Size size) {
    /// Left Arm
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.27),
      Offset(size.width * 0.35, size.height * 0.34),
      _paint..strokeWidth = 5,
    );

    /// Right Arm
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.27),
      Offset(size.width * 0.65, size.height * 0.34),
      _paint..strokeWidth = 5,
    );
  }

  void drawLegs(Canvas canvas, Size size) {
    /// LEft Leg
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.43),
      Offset(size.width * 0.35, size.height * 0.5),
      _paint..strokeWidth = 5,
    );

    /// Rigth Leg
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.43),
      Offset(size.width * 0.65, size.height * 0.5),
      _paint..strokeWidth = 5,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    drawHead(canvas, size);
    drawBody(canvas, size);
    drawArms(canvas, size);
    drawLegs(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
