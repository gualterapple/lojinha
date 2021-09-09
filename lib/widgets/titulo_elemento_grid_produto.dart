import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TituloElementoGridProduto extends StatelessWidget {

  final String ?titulo;

  TituloElementoGridProduto({
    this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo!, style: Theme.of(context).textTheme.headline2));
  }
}