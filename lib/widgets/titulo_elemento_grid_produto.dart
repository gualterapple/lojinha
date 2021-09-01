import 'package:flutter/cupertino.dart';

class TituloElementoGridProduto extends StatelessWidget {

  final String ?titulo;

  TituloElementoGridProduto({
    this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo!));
  }
}