import 'package:customPainter/widgets/header_pico.dart';
import 'package:customPainter/widgets/header_triangular.dart';
import 'package:customPainter/widgets/header_triangular_mitad.dart';
import 'package:flutter/material.dart';

class HeaderPicoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HeaderPico(),
    );
  }

}