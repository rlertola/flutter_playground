import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  static const routeName = '/curved_container';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.redAccent,
          child: CustomPaint(
            painter: CurvePainter(),
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;

    var path = Path();
    path.moveTo(size.width * .5, 0);
    path.lineTo(size.width * .5, size.height);
    // path.quadraticBezierTo(size.height * .25, size.height, size.width * .55, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
