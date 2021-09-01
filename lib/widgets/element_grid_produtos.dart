import 'package:flutter/cupertino.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/degrade_elemento_grid_produto.dart';
import 'package:lojinha/widgets/imagem_elemento_grid_produto.dart';
import 'package:lojinha/widgets/titulo_elemento_grid_produto.dart';

class ElementoGridProdutos extends StatelessWidget {

  final Movel movel;

  ElementoGridProdutos({
    required this.movel
  });

  @override
  Widget build(BuildContext context) {
     return Stack(
       alignment: Alignment.center,
       children:<Widget> 
       [ImagemElementoGridProdutos(imagem: movel.foto),
       DegradeElementoGridProdutos(),
       TituloElementoGridProduto(titulo: movel.titulo)]
     );
  }
}