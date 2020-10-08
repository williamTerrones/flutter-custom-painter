import 'package:customPainter/widgets/headers.dart';
import 'package:flutter/material.dart';

class HeaderCuadradoPage extends StatelessWidget {
  const HeaderCuadradoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HeaderCuadrado(),
    );
  }

}