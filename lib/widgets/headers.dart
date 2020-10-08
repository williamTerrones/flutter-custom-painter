import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color:Colors.red,
    );
  }
}

class HeaderCircular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color:Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50) ,
          bottomRight: Radius.circular(30),
        )
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
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

      path.moveTo(0, size.height*0.35);
      path.lineTo(size.width, size.height * 0.30);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);

      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }

}