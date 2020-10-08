import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTriangular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      //Lapiz
      final paint = Paint();
      paint.color = Colors.red;
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 2;

      //Para mover lapiz
      final path = Path();

      //Dibujar en el path con el lapiz

      path.moveTo(0, size.width * 0.5);
      path.lineTo(size.width*0.5, 0);
      path.lineTo(size.width, size.width*0.5);

      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }

}