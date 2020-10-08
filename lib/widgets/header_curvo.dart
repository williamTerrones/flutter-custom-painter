import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderCurvo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      //Lapiz
      final paint = Paint();
      paint.color = Colors.red;
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 20;

      //Para mover lapiz
      final path = Path();

      //Dibujar en el path con el lapiz
      path.lineTo(0, size.height*0.30);
      path.quadraticBezierTo(size.width*0.5, size.height*0.50, size.width, size.height * 0.30 );
      path.lineTo(size.width, 0);

      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }

}