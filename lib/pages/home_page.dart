import 'package:customPainter/pages/header_circular.dart';
import 'package:customPainter/pages/header_cuadrado.dart';
import 'package:customPainter/pages/header_curvo_page.dart';
import 'package:customPainter/pages/header_diagonal_page.dart';
import 'package:customPainter/pages/header_pico_page.dart';
import 'package:customPainter/pages/header_triangular_mitad_page.dart';
import 'package:customPainter/pages/header_triangulo_page.dart';
import 'package:customPainter/pages/header_waves_page.dart';
import 'package:customPainter/widgets/header_triangular_mitad.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            this._btn1(context),
            this._btn2(context),
            this._btn3(context),
            this._btn4(context),
            this._btn5(context),
            this._btn6(context),
            this._btn7(context),
            this._btn8(context),
          ],
        ),
      ),
    );
  }

  Widget _btn1(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderCuadradoPage() )
        );
      },
      child: Text("Header cuadrado"),
    );
  }

  Widget _btn2(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderCircularPage() )
        );
      },
      child: Text("Header Circular"),
    );
  }

  Widget _btn3(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderDiagonalPage() )
        );
      },
      child: Text("Header diagonal"),
    );
  }

  Widget _btn4(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderTrianguloPage() )
        );
      },
      child: Text("Header triangulo"),
    );
  }

  Widget _btn5(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderTriangularMitadPage() )
        );
      },
      child: Text("Header trignaular mitad"),
    );
  }

  Widget _btn6(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderPicoPage() )
        );
      },
      child: Text("Header pico"),
    );
  }

  Widget _btn7(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderCurvoPage() )
        );
      },
      child: Text("Header curvo"),
    );
  }

  Widget _btn8(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_) => HeaderWavesPage() )
        );
      },
      child: Text("Header waves"),
    );
  }

}