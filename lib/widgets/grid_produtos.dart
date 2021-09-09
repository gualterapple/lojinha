import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/element_grid_produtos.dart';

class GridProdutos extends StatelessWidget {

  final moveis;

  final Function atualiza;

  GridProdutos({this.moveis, required this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice){
        final movel = Movel.fromJson(moveis[indice]);
        return  ElementoGridProdutos(movel: movel,
        atualiza: atualiza);
      }
    );
  }
}