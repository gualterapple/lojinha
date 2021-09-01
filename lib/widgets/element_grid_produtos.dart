import 'package:flutter/cupertino.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/imagem_elemento_grid_produto.dart';

class ElementoGridProdutos extends StatelessWidget {

  final Movel movel;

  ElementoGridProdutos({
    required this.movel
  });

  @override
  Widget build(BuildContext context) {
     return ImagemElementoGridProdutos(imagem: movel.foto);
  }
}