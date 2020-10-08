import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTriangularMitad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularMitadPainter(),
      ),
    );
  }
}

class _HeaderTriangularMitadPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      //Lapiz
      final paint = Paint();
      paint.color = Colors.blue;
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 2;

      //Para mover lapiz
      final path = Path();

      //Dibujar en el path con el lapiz

      path.moveTo(0, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);

      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }

}