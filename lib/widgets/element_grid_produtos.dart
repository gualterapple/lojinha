import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/paginas/detalhes.dart';
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
     return InkWell(
       onTap: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) => 
           Detalhes(movel: movel)
         ));
       },
       child: Container(
         decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               spreadRadius: 2,
               blurRadius: 8,
               color: Colors.black12
             )
           ]
         ),
         margin: EdgeInsets.all(10),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(8),
           child: Stack(
             alignment: Alignment.center,
             children:<Widget> 
             [ImagemElementoGridProdutos(imagem: movel.foto),
             DegradeElementoGridProdutos(),
             TituloElementoGridProduto(titulo: movel.titulo)]
           ),
         ),
       ),
     );
  }
}