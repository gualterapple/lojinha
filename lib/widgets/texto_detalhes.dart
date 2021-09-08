import 'package:flutter/cupertino.dart';

class TextoDetalhes extends StatelessWidget {

  final String texto;

  TextoDetalhes({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16
      ),
      child: Text(
        texto
      ),
    );
  }
}